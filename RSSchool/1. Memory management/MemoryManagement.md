# MemoryManagement

* [ Retain count ]( )
* [ Autorelasepool]( )
* [ Property attributes ]( )
* [ ARC ]( )
* [ Retain cycle ]( )

## Intro 

Систему управления памятью в IOS.

* MRC
* ARC
* Autoreleasepool
* Property attributes
* Bridged cast
* Problems

## Why doese a developer need memory?

Существует три области памяти 

* Global (Static)
* Heap
* Stack

### Global (Static)

```objc
static NSString *message = @"Hello, world!";
```
В данном случае ее значение будет храниться в памяти, все время пока работает приложение. Для таких переменных памят выделяется при запуске приложения и освобождается только тогда когда работа завершена. 

### Stack

```objc
-(void)printMessage {
    char message[] = "Hello, world!";

    printf("@s", message);
}
```
Если переменная объявлена на стеке, она будет существовать только в рамке своего скопа и при выходе за его пределы память которое хранила его значение очистится 

### Heap
```objc
-(void)printMessage {
    NSString *message = [[NSString alloc] initWithUTF8String:"Hello, world!"];

    NSLog(@"%s", message);
}
```
Переменная не храниться на стеке. В данном случае переменная будет существовать столько - сколько нужно разработчику.

## Memory management

### Reference counting
Эта система ожидает от вас, что вы будете управлять памятью только в том случае, когда Вы являетесь собственником объекта. 

Вы являетесь собственником объекта если он был создан одним из четырех собственников:
* alloc-init
* new
* copy
* mutable copy

Если вы получили объект иным способом, то система не будет ожидать от вас, что вы будет управлять памятью этого объекта. 
Увелечение собстувенников объекта приводит счетчик на +1, аналогично уменьшение.
Если объект негде не используется, счетчик = 0, то система использует метод dealloc и удалит объект из памяти.

### Системы в IOS

* MRC - ручной подсчет ссылок
* ARC - автоматический подсчет ссылок

## Manual reference counting
Концепт этой системой управления памятью базируется на комбинации и своевременном вызове методов *retain/release*:

* Вы можете стать собственником этого объекта вызвав у него метод retain
Это необходимо тогда когда Вы сами не создавали объект, а например получили его из какого то метода, но вы хотите использовать данный объект поэтому вам нужно заявить свои права на его владения, чтобы быть уверенном , что он не исчезнет из  памяти. 

* После завершения работы с таким объектом Вы должны отказаться от владением *release*. Это нужно делать только для тех объектов собственники которых Вы являетесь. То есть для объектов созданных вами с помощью методов alloc init new copy mutable copy или получены по ссылке, но для которых Вы заявили права на владение с помощью вызова метода retain. 

## Nota bene
Вы являетесь собственником объекта в том случае если Вы сами его создали.

* Когда Вы получаете объект через вызов alloc init, new, copy, mutable copy. 

* В том случае если вы получили этот объект по ссылке, Вы можете стать собственником этого объекта отправив ему сообщение retain

* Если Вы получили объект одним из выше сказанных способов или Вы заявили своими права путем вызова retain - вы должны освободить объект после того когда он больше не нужен. release.

* Ни в коем случае не нужно отправлять сообщение release тому объекту собственником которого Вы не являетесь. 

Почему 4? Пример:

```objc
    NSString *message = [[NSString alloc] initWithUTF8String:"Hello, world!"];

    NSLog(@"Some work with message: %@", message);

    [message relaese];
```


А как быть в этом случае?
```objc
    NSString *message = [NSString stringWithUTF8String:"Hello, world!"];

    NSLog(@"Some work with message: %@", message);
```
Мы не создаем объект с помощью методов alloc init, new, copy, mutable copy, а значит не являемся его собственником, поэтому нам не нужно вызывать метод relaese по окончанию работы с ним.
Однако мы не можем быть уверены, что он не исчезнет из памяти раньше времени, пока мы с ним работаем.

Что бы не допустить это: 
```objc
    NSString *message = [NSString stringWithUTF8String:"Hello, world!"];

    [message retain];

    NSLog(@"Some work with message: %@", message);

    [message release];
```

Тоже самое применимо если мы получаем объект из какого то кастомного метода:
```objc
    NSString *message = [self getMessage];

    [message retain];

    NSLog(@"Some work with message: %@", message);

    [message release];
```

## Example
Но как поступить в том случае если у нас есть какой то метод в котором мы создаем объект и хотим вернуть его из этого метода 

```objc
    -(NSString)getMessage] {
        NSString *message = [[NSString alloc] initWithUTF8String:"Hello, world!"];

        return message; 
    }

    // LEAK
```

```objc
    -(NSString)getMessage] {
        NSString *message = [[NSString alloc] initWithUTF8String:"Hello, world!"];

        return [message release]; 
    }

    // CRASH
```


```objc
    -(NSString)getMessage] {
        NSString *message = [[NSString alloc] initWithUTF8String:"Hello, world!"];

        return [message autorelease]; 
    }
```

## Autorelease pool

```objc
-(NSString *)getMessage {
    NSString *message = [[NSString alloc] initWithUTF8String: "Hello, World!"] ;

    return [message autorelease];
}

```

Как создать такой пул?

1:
```objc

@autoreleasepool {

}
```
2(устарело): 

```objc

NSautoreleasepool *pool = [ [NSautoreleasepool alloc] init];

```
autoreleasepool должен быть создан за пределами скоупа за который хочет выйти ваш объект

## Autorelease pool stack

```objc

@autoreleasepool {
    @autoreleasepool {
        
    }
}
```
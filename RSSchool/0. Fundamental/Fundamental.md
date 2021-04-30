# Fundamental

### Projects

* [ Basic C ](https://github.com/egorskikh/Hello-Objective-C/tree/main/RSSchool/0.%20Fundamental/Demo1%20Basic%20C)
* [ Basic Objective-C ](https://github.com/egorskikh/Hello-Objective-C/tree/main/RSSchool/0.%20Fundamental/Demo2%20Basic%20Objective-C)
* [ Mediume Objective-C ](https://github.com/egorskikh/Hello-Objective-C/tree/main/RSSchool/0.%20Fundamental/Mediume%20Objective-C)

## Расширение имен файлов

| Расширение  | Описание | Что тут? |
| ------------- | ------------- | ------------- | 
| .h | Файл заголовка (Header)  | @interface Также можно определять протоколы, константы, перечисления, прототипы функции |
| .m  | Исходный файл Objective-C | @implementation Файлы реализации. В них определяется реализация интерфейса определенного в заголовочном файле. Это реализация в дальнейшем не видна тому классу который использует интерфейс из заголовочного файла.  |
| .c  | Исходный файл на языке C  |  |
| .cc / .cpp  | Исходный файл на языке C++  |  |
| .mm  | Исходный файл Objective-C++  |  |
| .pl  | Исходный файл Perl  |  |
| .o  | Объектный (компилированный) файл |  |

## Data Type
### Базовые  типы || Basic

| int  | float  | double | char | ... |
| ------------- | ------------- | ------------- | ------------- | ------------- | 

### Производные  типы || Derived

| struct  | union | pointer | array | function | ... |
| ------------- | ------------- | ------------- |  ------------- | ------------- | ------------- | 

## Scope (Область видимости)
>Это область программы с определенных в ней переменными. 
На базовом уровне есть:
* global
* local

Пример Scope в коде:
```objc
{
  // - Это область видимости
}
```

## Function
>Функция - это набор выражений которые собраны в исполняемую последовательность. 

```objc
char foo(int bar)
{
    rerurn bar + "0";
}
```
Разбор: 
| char  | foo | (int bar) |  
| ------------- | ------------- | ------------- | 
| возвращаемый тип | имя функции  | принимаемые параметры  | 

```objc
{                    // 
  rerurn bar + "0"; // тело функции
}                  //
```
Тело функции должно завершаться ключевым словом *return* если нет возвращаемого типа *(void)*.

## Memory Areas

Память необходима для того что бы хранить в ней данные, с которыми работает программа в процессе своего выполнения.
Память делиться на три типа:
* Global
* Stack
* Heap (куча)

### Global 
| Global  | 
| ------------- | 
| Глобальная память выделяется системой при запуске программы. И очищается ей при завершении этой программы. Глобальная память является памятью глобального scope(а). Переменные созданные в глобальной памяти имеют постоянный адрес.  | 



```objc
#include <stdio.h>

int a = 123;              // - global variable

void foo() {
    printf("%d", a);
}
```

### Stack 

| Stack  | 
| ------------- | 
| Стек - это память локальной области видимости. И с малым объёмом. Отличительной особенностью стека, является то что переменные созданные в стеке удаляются из него при выходе из области видимости этого стека. | 


```objc
int main(int argc, const char * argv[]) {

    if (1 != 2)
    {
        int a = 0;             // - stack variable
        printf("%d", a);
    }
    
    return 0;
}
```

### Heap 
| Heap  | 
| ------------- | 
| Куча - это память большого объема. Объекты созданные в куче не ограничены в области видимости. Если есть ссылка на объект из кучи, тогда доступ к этому объекту может быть предоставлен из любого места программы. Объекты в куче - не очищаются автоматический.  | 



*Ответственность за очистку памяти этих объектов лежит на том кто их создал.*
```objc
int main(int argc, const char * argv[]) {
    
    int *ptr = malloc(sizeof(int));        // переменная ptr содержит адрес области памяти выделенной в куче с помощью функции malloc 
    *ptr = 123;                            // с ней можно работать (присваивать ей значения, выводить)
    
    printf("%d", *ptr);
    
    free(ptr);                             // САМОЕ ВАЖНОЕ СДЕЛАТЬ ОЧИСТКУ ПАМЯТИ
    
    return 0;
}
```

## Value & Reference Types
Все типы данных делятся на две группы.
* *Value type*
* *Reference type*

*Value type (тип значения)* - Хранит собственное значение в памяти расположенной на stack.

```objc
#include <stdio.h>

void foo() {
     int a = 123;         // Value type variable
     printf("%d", a);
}
```
*Reference type (тип ссылка)* - Использует ссылку в качестве инструмента доступа к значению объекта. При этом эта ссылка не хранит значение самого объекта, а только ссылается на него.

*object*
| 0x1 | 
| --- | 
| value = 3 | 

* RT variable 1 (переменная является ссылкой)
* RT variable 2 (переменная является ссылкой)
* RT variable 3 (переменная является ссылкой)
* ...

Все объекты будут знать об изменениях

## Pointers
Указатель - это переменная значением который является адресс другой переменной.
При этом указатель это переменная *Value type*.
Reference type основаны на указателях.

Два основных оператора для работы с указателями:
* "&" - опертор взятия адреса 
* "*" -  оператор разыменования

```objc
#include <stdio.h>

int main(int argc, const char * argv[]) {
    int *a;           // переменная указатель
    int b = 123;
    
    a = &b;           // берем адрес другой переменной (b) с помощью оператора & 
    
    printf("%d\n", b);   // 123
    printf("%d\n", *a);  // 123
    
    *a = 432;            // с помощью оператора разыменования изменяем значения переменной 
    
    // same as
    // b = 432
    
    printf("%d\n", b);  // 423
    printf("%d\n", *a); // 423
    
    return 0;
}
```
# [ Demo#1 Basic C ](https://github.com/egorskikh/Hello-Objective-C/tree/main/RSSchool/0.%20Fundamental/Demo1%20Basic%20C)

## Object-Oriented Programming

Используется понятие:
* Класс - это шаблон для создания объектов, он описывает набор методов и свойств которые будут доступны для работы с объектом.
* Объект - конкретный экземпляр класса. 

### Принципы

* Абстракция 

Абстракция - выделение наиболее значимых характеристик объекта или системы. Значимость характеристики определяется контекстом в котором будет использоваться объект.

* Наследование 

Наследование - это механизм базирования класса на другом классе. Между классами создаются отношения *родитель-потомок*. Класс потом принимает интерфейс класса родителя и может его расширить путем добавления новых методов и свойств.

* Полиморфизм 

Полиморфизм - это работа с одним интерфейсом, который может быть реализован различными типами. Например: использования интерфейса класса родителя. Предоставления различных его реализаций через классы потомки. 

* Инкапсуляция 

Инкапсуляция - это сокрытие деталей класса в виде его приватных методов и свойств. И предоставления публичных методов для работы с этим классом.

* Отправка сообщений 

Отправка сообщений - предузумевает, что объект имеет возможность предоставить реализацию метода при его вызове. И именно он отвечает за это, а не код который вызывал этот метод.

* ...

## Class

Определение интерфейса класса в Objective-C указывается в его заголовочном файле *.h*, а реализация класса в файле имплементации *.m*

```objc
@interface Human: NSObject // имя класса : родительский класс
{
    int age;            //
    id data;            //  переменные экземпляра 
    NSString *_name;    //
}

-(void)sayHello;                                   // прототипы методов
+ (Human *)createHumanWithName:(NSString *)name;   // 

@end
```

Реализация класса:
```objc
@implementation Human

- (void)sayHello;
{
    puts("Hello!");
}

+ (Human *)createHumanWithName:(NSString *)name
{
   Human *human = [[Human alloc] init];
   human.name = name;
   return human;
}

@end
```

## Method

Метод - это функция которая принадлежит объекту. Определение метода похоже на определение функции в языке C. 

| -  | +  | 
| --- | --- |
| Метод экземпляра | Метод класса | 

```objc
@interface SomeClass: NSObject

- (void)foo;                                  
+ (int)foo:(int)bar;
- (NSInteger)foo:(int)bar1 oof: (int)bar2;  // если несколько входных параметров

@end
```

|  +  |  (int)  | foo |  :(int)  |  bar  |
| Указание его принадлежности | возвращаемый тип | имя метода |  тип параметра  |  имя параметра |

### Реализация метода 

Реализация метода такая же как функция в языке C.

```objc
@implementation SomeClass

- (void)foo {

}

+ (int)foo:(int)bar {
    return 123;
}

- (NSInteger)foo:(int)bar1 oof: (int)bar2{
    return 123;
}

@end
```

## Object 

Объект - это указатель на область памяти, в которой находится экземпляр класса. 

```objc

Human *object;              // определение указателя с типом класса
object = [Human alloc];    // присваивается адрес выделенной памяти
object = [object init];   // данный метод проводит присвоение значения полям данного объекта
```
```objc

Human *object = [[Human alloc] init];
Human *object = [Human new];
```

## MRC&ARC

* MRC - ручной подсчет ссылок 
* ARC - автоматический подсчет ссылок

## Initialization
Инициализация - это процесс присваивание начальных значений полям объекта.

Один из стандартных инициализаторов *init*, который определен в классе NSObject.
```objc
- (id)init
{
   self = [super init];      // вызов родительского инициализатора
   if (self)
   {
       _name = @"Egor";
       _surname = @"Gorskikh";
   }
   return self;
}
```

## Deinitialization
Деинициализация - это процесс очищения памяти от экземпляра класса.

Вызывется в рантайме и разработчику выполнять его не нужно.
```objc
- (void)dealloc
{
  // do stuff
  [self.service stopJob];
  
  // only under MRC
  // [super dealloc]
}
```
## Object Structure

В Objective-C каждый объект на базовом уровне представлен структурой языка C.

```objc
typedef struct objc_object {
    Class isa;  // Указатель класс isa, который ссылается на структуру Class 
...
} *id;          // тип id представляет собой универсальный тип  описывающий любой объект objc
```
nil - отсутствие любого значения 

## Dynamic Method Dispatch

Objective-C реализует посылку сообщений, через динамическую диспетчеризацию методов. Конечная реализация вызываемого метода становится известна на этапе выполнения. 

Вызов метода выглядит следующим образом:
```objc
[receiver message]
```
|  receiver  |  message  | 
| --- | --- | 
| У некоторого объекта receiver в interface определен метод message | вызов метода | 

Компилятор образует данный синтаксис в вызов функции языка C.
```objc
objc_msgSend(receiver, @selector(message))
```
Если метод принимает параметры:
```objc
objc_msgSend(receiver, @selector(message: arg1: arg2:), arg1, arg2)
```

# [ Demo#2 Basic Objective-C ](https://github.com/egorskikh/Hello-Objective-C/tree/main/RSSchool/0.%20Fundamental/Demo2%20Basic%20Objective-C)

## Protocol 
Протокол определяет набор методов и свойств, которые класс должен реализовать, чтобы соответствовать заданному поведению.

```objc
@protocol Bird<NSObject> // <NSObject> - наследуется  

@required
-(void)sing;

@optional
-(void)fly;

@end
```

```objc
@interface Mockingbird: NSObject <Bird>

@end

@implementation Mockingbird

- (void)sing {                 //
    NSLog(@"🎶🦜");            //
}                             //  Реализация этих методов
- (void)fly {                 //
    NSLog(@"Faster than 🛩"); // 
}
 
@end
```

Протокол можно использовать как тип

```objc
id<Bird> arbitraryBird = [Mockingbird new];
```

```objc
@interface SomeClass
-(void)whatIsThiesPokemon:(id<Bird>)bird;
@end
```

## Reflection & Introspection
Objective-C является рефлективным языком. Это означает, что можно проверить реализацию метода, протокола или наследственность  от класса.


Что бы проверить реализацию метода *respondsToSelector* :
```objc
id<Bird> arbitraryBird = [Mockingbird new];

if ([arbitraryBird respondsToSelector: @selector(fly)]) {
    [arbitraryBird fly];
}
```

Что бы проверить реализацию протокола в классе *conformToProtocol* :
```objc
id<Bird> arbitraryBird = [Mockingbird new];

if ([Mockingbird conformToProtocol: @protocol(NSCopying)]) {
    id birdClone = [(id)arbitraryBird copy];
}
```

Что бы проверить находиться ли класс в иерархии классов что был передан в качестве параметра *isKindOfClass* :
```objc
id<Bird> arbitraryBird = [Mockingbird new];

if ([arbitraryBird isKindOfClass: [NSObject class]]) {
    NSLog(@"This is am Objective-C object: %@", arbitraryBird);
}
```

Что бы проверить, что класс объекта, что он в точности является тем классом 
```objc
id<Bird> arbitraryBird = [Mockingbird new];

if ([arbitraryBird isMemberOfClass: [Mockingbird class]]) {
    NSLog(@"This is a Mockingbird: %@", arbitraryBird);
}
```

##Property
Переменные экземпляра, позволяют связать данные с экземплярами класса.
Свойства позволяют организовать доступ к этим переменным.
```objc
@property (nonatomic, copy) NSString *birdName;
```
|  @property  |  (nonatomic, copy)  | NSString |  *birdName;  |  
| ключевое слово | список атрибутов | тип данных |  имя переменной  | 

Конструкция является синтаксическим сахаром и компилятор генерирует специальные метода доступа согласно этому свойству.
Их нейминг таков: 
геттер: имеет имя свойства, 
сеттер: сначала идет set а после имя свойства
```objc
- (NSString *)birdName;
- (void)setBirdName : (NSString *)birdName;
```

Данное поведение можно изменить при помощи атрибутов геттер и сеттер и указать желаемые имена методов доступа.
```objc
@property (nonatomic, copy, getter=bird, setter=setBird) NSString *birdName;

- (NSString *)bird;
- (void)setBird: (NSString *)birdName;
```

## Property Attributes

* Accessibility - атрибуты доступности 
* Ownership - атрибуты владения
* Atomicity - атрибуты атомарности
* Nullability - атрибуты изануляемости

### Accessibility

* readwrite

Используется по умолчанию , если другого не определенно. Когда он указан компилятор генерирует геттер и сеттер и переменную экземпляра.

* readonly

Будет сгенерирован только геттер 

### Ownership

Атрибуты владения позволяют указать семантику работы с памятью внутри свойства 

* retian
* strong
* weak
* copy
* assing
* unsafe_unretained

### Atomicity

* atomic - используется по умолчанию, если другого не определенно. Когда он указан компилятор генерирует специальный код в методах доступа, который предотвращает одновременный доступ к ресурсу  из нескольких потоков. Это может быть полезно когда нужно решить проблему многопоточности. Если предопределен метода доступа у атомарного свойства , тогда и другой метод доступа также должен быть предопределен   
* nonatomic - указывает компилятору не генерировать этот вспомогательный код. Тогда свойство остается не защищенном от одновременного доступа нескольких потоков.

Если не получается объяснить почему свойство должно быть атомарным, тогда оно должно быть *nonatomic* .

### Nullability

Данные атрибуты могут указать может ли свойство хранить значение nil или нет.

* null_unspecified - используется по умолчанию если другого не определенно. Не укзаывает то что свойство может хранить значение nil или нет
* null_resettable - указывает что getter свойство всегда вернет значение которое не равно nil. При этом если данному свойству присвоить значение nil, тогда его значение сброситься на *по умолчанию*
* nonnull - свойство не может хранить значение nil
* nullable - свойство может хранить значение nil

### Common recommendations

В методе init и dealloc не стоит использовать доступ к свойству через методы доступа так как последние два могу быть определены таким образом, что они будут работать медленно, а эти методы предпологаются быстрыми к исполнению. 

## Category 

Это механизм языка который позволяет расширять интерфейс уже существующего класса без необходимости наследования дынный механизм доступен даже для тех классов исходный код которых остается недоступным. Интерфейс категории описываются в заголовочном файле категории и похож на определение интерфейса класса 

```objc
@interface Mockingbird (RoboticBird)     // (RoboticBird) - имя категории

-(void)iWillBeBack;                     // описываются прототипы методов

@end
```

### Реализация категории 
Описывется в файли имплементации этой категории

```objc
@implepentation Mockingbird (RoboticBird)     // (RoboticBird) - имя категории

-(void)iWillBeBack {
      NSLog(@"pew")
}                    

@end
```

Бывают ситуации когда в категории уже определен метод в интерфейса класса или любой другой категории этого класса в таком случае при импорте нескольких категорий будет использована реализация той которая была импортирована последней.

## Extension 

Расширение определяет свойства и методы которые необходимы классу для его внутренней работы. 

Расширение определяется для тех классов имплементация которых доступно. 
Например: собственные классы

```objc
@interface Mockingbird ()     

@property (nonatomic, assign) NSInteger wingspan;  
-(void)makeEgg;                  

@end
```
Реализация расширения определяется в реализации самого класса.

## Category vs Extension

Разница между Category и Extension:
Extension добавляются на этапе компиляции ввиду чего в них можно определить переменные экземпляра а для свойств которые добавлены в extension эти переменные будут добавлены автоматический.
Category добавляются на этапе рантайма и из-за этого в ней нельзя определить переменные экземпояра, а для свойств которые определны в категории эти переменные добавлениы автоматически не будут.

```objc
@interface Bird ()    

@property (nonatomic, assign) NSInteger wingspan;   // Property

@end

@implepentation Bird

- (void) tellWingspan {
    printf("%d", _wingspan);
}
@end
```

```objc
@interface Bird ()    

@property (nonatomic, copy) NSString *colorType*;   // Property

@end

@implepentation Bird

- (NSString *)colorType {
    return @"Red";
}

- (void)setColorType: (NSString *)colorType {
    // ...
}

@end
```

## Other keywords

* @syntesize - позволяет изменить для свойство его его переменную экземпляра.
* @dynamic - заставляет генератор не генерировать методы доступа и уверяет его в том, что эти методы будут добавлены на этапе выполнения.

### @syntesize
```objc
@implepentation SomeClass

@syntesize someProperty;

@end
```

Чтобы изменить и сделайть свой собственный айвар
```objc
@implepentation SomeClass

@syntesize someProperty = _someAnotherProperty;

@end
```
### @dynamic
```objc
@implepentation SomeClass

@dynamic property;

@end
```
# [ Mediume Objective-C ](https://github.com/egorskikh/Hello-Objective-C/tree/main/RSSchool/0.%20Fundamental/Mediume%20Objective-C)

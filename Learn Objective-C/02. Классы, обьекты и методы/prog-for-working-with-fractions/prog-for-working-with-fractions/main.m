//
//  main.m
//  prog-for-working-with-fractions
//
//  Created by Егор Горских on 26.04.2021.
//

#import <Foundation/Foundation.h>

//--Секция @interface--

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

//--Секция @implementation--

@implementation Fraction
-(void) print
{
NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}

@end

//--Секция @program--
int main(int argc, const char * argv[])
{    
    @autoreleasepool {
        Fraction *myFraction;
        
        // Создание экземпляра
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        // Присваивание значения 1/3
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        // Выводим в принт
        NSLog(@"Значение myFraction:");
        [myFraction print];
    }
    return 0;
}

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
-(int) numerator;
-(int) denominator;

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

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

@end

//--Секция @program--
int main(int argc, const char * argv[])
{    
    @autoreleasepool {
        Fraction *frac1 = [Fraction new];
        Fraction *frac2 = [[Fraction alloc] init];
        
        // Задание 1 дроби 2/3
        [ frac1 setNumerator: 2];
        [ frac1 setDenominator: 3];

        // Задание 2 дроби 3/7
        [ frac2 setNumerator: 3];
        [ frac2 setDenominator: 7];
        
        // Вывод дробей
        NSLog(@"First fraction is: %i/%i",
              [frac1 numerator], [frac1 denominator]);
        NSLog(@"Second fraction is: %i/%i",
              [frac2 numerator], [frac2 denominator]);

    }
    return 0;
}

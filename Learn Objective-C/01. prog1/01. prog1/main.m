//
//  main.m
//  01. prog1
//
//  Created by Егор Горских on 25.04.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"\nProgramming is fun!\n");
        NSLog(@"\nProgramming in Objective-C is even more fun!\n");
        NSLog(@"\nTesting...\n..1\n...2\n....3\n");
        
        int value1, value2, sum;
        value1 = 50;
        value2 = 25;
        sum = value1 + value2;
        NSLog(@"\nСумма %i и %i равна %i.\n", value1, value2, sum);
        
        NSLog(@"\nВыполнение программы происходит в main.\nОператоры программы находятся между открывающей и закрывающей фигурными скобками.\nВсе операторы программы должны заканчиваться символом - ТОЧКА С ЗАПЯТОЙ.\n");
        
        int int1, int2;
        int1 = 87;
        int2 = 15;
        NSLog(@"\nРазность %i и %i равна %i", int1, int2, int1 - int2);
    }
    return 0;
}

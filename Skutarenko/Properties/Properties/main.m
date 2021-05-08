//
//  main.m
//  Properties
//
//  Created by Egor Gorskikh on 08.05.2021.
//

#import <Foundation/Foundation.h>
#import "EGBoxer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        EGBoxer* boxer = [[EGBoxer alloc] init];
        
//        boxer.name = @"Egor";
//        boxer.age = 25;
//        boxer.height = 1.8f;
//        boxer.weigth = 80.f;
        
        [boxer setName:@"Egor"];
        [boxer setAge:25];
        [boxer setHeight:1.8f];
        [boxer setWeigth:80.f];
        
        NSLog(@"name - %@", boxer.name);
        NSLog(@"name = %@", [boxer name]);
        
//        NSLog(@"name - %@", boxer.name);
//        NSLog(@"age - %d", boxer.age);
//        NSLog(@"height - %f", boxer.height);
//        NSLog(@"weigth - %f", boxer.weigth);
        
//        NSLog(@"name = %@", [boxer name]);
//        NSLog(@"age = %ld", (long)[boxer age]);
//        NSLog(@"height = %f", [boxer height]);
//        NSLog(@"weigth = %f", [boxer weigth]);
        
        NSLog(@"age = %ld", (long)[boxer howOldAreYou]);
    }
    return 0;
}

//
//  main.m
//  Methods
//
//  Created by Egor Gorskikh on 07.05.2021.
//

#import <Foundation/Foundation.h>
#import "EGParentClass.h"
#import "EGChildClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        EGChildClass* parent = [[EGChildClass alloc] init];
        [parent sayHello];
        [parent say:@"How are you?"];
        [parent say:@"I was worried about you." and:@"Where have you been?"];
        [parent say:@"Hope you are ok!" and:@"Are you?" andAfterThat:@"Are you sure?"];
        
        NSLog(@"%@", [parent saySomething]);
        
        [EGChildClass whoAreYou];
    }
    return 0;
}

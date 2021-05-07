//
//  EGParentClass.m
//  Methods
//
//  Created by Egor Gorskikh on 07.05.2021.
//

#import "EGParentClass.h"

@implementation EGParentClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instence of parent class is created.");
    }
    return self;
}

+ (void) whoAreYou {
    NSLog(@"I am EGParentClass %@", self);
}

- (void) sayHello {
    NSLog(@"Parent says hello! %@", self);
}

- (void) say: (NSString*) string {
    NSLog(@"%@", string);
}

- (void) say: (NSString*) string and:(NSString*) string2 {
    NSLog(@"%@, %@", string, string2);
}

- (void) say: (NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3 {
    NSLog(@"%@, %@, %@", string, string2, string3);
}

- (NSString*) saySomeNumberString {
    
    return [NSString stringWithFormat: @"%@", [NSDate date]];
}

- (NSString*) saySomething {
    NSString* string = [self saySomeNumberString];
    return string;
}


@end

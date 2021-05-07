//
//  EGChildClass.m
//  Methods
//
//  Created by Egor Gorskikh on 07.05.2021.
//

#import "EGChildClass.h"

@implementation EGChildClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instens child class is initialized.");
    }
    return self;
}

- (NSString*) saySomeNumberString {
    return @"Something";
}

- (NSString*) saySomething {
    return [super saySomeNumberString];
}

@end

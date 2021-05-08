//
//  EGObject.m
//  Parameters
//
//  Created by Egor Gorskikh on 08.05.2021.
//

#import "EGObject.h"

@implementation EGObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Object is created");
    }
    return self;
}

- (void) dealloc {
    NSLog(@"object is deallocated");
}

@end

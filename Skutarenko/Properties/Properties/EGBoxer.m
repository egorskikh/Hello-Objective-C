//
//  EGBoxer.m
//  Properties
//
//  Created by Egor Gorskikh on 08.05.2021.
//

#import "EGBoxer.h"

@interface EGBoxer()

@property (assign, nonatomic) NSInteger nameCount;

@end

@implementation EGBoxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"noname";
        self.age = 0;
        self.height = 0.f;
        self.weigth = 0.f;
    }
    return self;
}

- (void) setName:(NSString *)inputName {

    NSLog(@"Setter setName: is called");

    // iVar
    _name = inputName;
}

// get
- (NSString*) name {
    self.nameCount++;
    NSLog(@"Name getter is called - %ld times", (long)self.nameCount);
    return _name;
}

// get
- (NSInteger) age {
    NSLog(@"Age getter is called");
    return _age;
}

- (NSInteger)howOldAreYou {
    
    return self.age;
}

@end

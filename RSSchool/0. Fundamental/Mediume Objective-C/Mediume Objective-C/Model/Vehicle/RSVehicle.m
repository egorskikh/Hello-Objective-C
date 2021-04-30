//
//  RSVehicle.m
//  Mediume Objective-C
//
//  Created by Егор Горских on 30.04.2021.
//

#import "RSVehicle.h"

@interface RSVehicle ()

@property (nonatomic, strong, readwrite) RSPassenger *captain;
@property (nonatomic, assign, readwrite) BOOL running;

@end

@implementation RSVehicle

- (instancetype)initWithPassenger:(RSPassenger *)captain {
    self = [super init];
    if (self) {
        _captain = captain;
    }
    return self;
}

- (void)toggleEngine: (BOOL)start {
    self.running = start;
    NSLog(self.running ? @"Engine: works" : @"Engine: stopped" );
    
}


@end

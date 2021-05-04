//
//  RSVehicle.h
//  Mediume Objective-C
//
//  Created by Егор Горских on 30.04.2021.
//

#import <Foundation/Foundation.h>
#import "RSPassenger.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSVehicle : NSObject

@property (nonatomic, strong, readonly) RSPassenger *captain;
@property (nonatomic, assign, readonly) BOOL running;

- (instancetype)initWithPassenger: (RSPassenger *)captain;
- (void)toggleEngine: (BOOL)start;

@end

NS_ASSUME_NONNULL_END

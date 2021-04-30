//
//  Car.h
//  Mediume Objective-C
//
//  Created by Егор Горских on 30.04.2021.
//

#import "RSVehicle.h"
#import "RSEnterable.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSCar : RSVehicle <RSEnterable>

- (void)move;

@end

NS_ASSUME_NONNULL_END

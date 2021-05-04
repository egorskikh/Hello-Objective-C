//
//  RSCarPort.h
//  Mediume Objective-C
//
//  Created by Егор Горских on 30.04.2021.
//

#import <Foundation/Foundation.h>
#import "RSCar.h"
#import "RSEnterable.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSCarPort : NSObject

- (void)launchCar: (RSCar *)car;
- (void)enter: (id<RSEnterable>)entry;

@end

NS_ASSUME_NONNULL_END

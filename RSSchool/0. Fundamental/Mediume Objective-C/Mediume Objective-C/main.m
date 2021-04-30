//
//  main.m
//  Mediume Objective-C
//
//  Created by Егор Горских on 30.04.2021.
//

#import <Foundation/Foundation.h>
#import "RSCarPort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RSCarPort *carPort = [RSCarPort new];
        
        RSPassenger *captain = [[RSPassenger alloc]initWithName:@"Egor"];
        RSCar *egorCar = [[RSCar alloc]initWithPassenger:captain];
        
        [carPort launchCar:egorCar];
        
        [carPort enter: captain];
        [carPort enter: egorCar];
        
        [captain sayHello];
    }
    return 0;
}

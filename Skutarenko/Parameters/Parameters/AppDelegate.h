//
//  AppDelegate.h
//  Parameters
//
//  Created by Egor Gorskikh on 08.05.2021.
//

#import <UIKit/UIKit.h>

@class EGObject;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (weak, nonatomic, getter = getObject, setter = setShmetObjecrt:) EGObject* object;

@end


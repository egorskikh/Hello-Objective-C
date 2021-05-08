//
//  EGBoxer.h
//  Properties
//
//  Created by Egor Gorskikh on 08.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EGBoxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weigth;

- (NSInteger) howOldAreYou;

@end

NS_ASSUME_NONNULL_END

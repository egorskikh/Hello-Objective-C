//
//  EGParentClass.h
//  Methods
//
//  Created by Egor Gorskikh on 07.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EGParentClass : NSObject

+ (void) whoAreYou;

- (void) sayHello;
- (void) say: (NSString*) string;
- (void) say: (NSString*) string and:(NSString*) string2;
- (void) say: (NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3;

- (NSString*) saySomeNumberString; 
- (NSString*) saySomething;

@end

NS_ASSUME_NONNULL_END

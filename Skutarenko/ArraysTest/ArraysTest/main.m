//
//  main.m
//  ArraysTest
//
//  Created by Egor Gorskikh on 07.05.2021.
//

#import <Foundation/Foundation.h>
#import "ASObject.h"
#import "ASChild.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        NSArray * array = [[NSArray alloc] initWithObjects:@"String 1", @"String 2", @"String 3", nil];
        // NSArray* array = [NSArray arrayWithObjects: @"String 1", @"String 2", @"String 3", nil];
        //NSArray* array = @[@"String 1", @"String 2", @"String 3"];
        
        //        for (int i = 0; i < 3; i++) {
        //            NSLog(@"%@", [array objectAtIndex: i]);
        //            NSLog(@"i = %d", i);
        //        }
        
        //        for (int i = [array count] - 1; i >= 0; i--) {
        //            NSLog(@"%@", [array objectAtIndex: i]);
        //            NSLog(@"i = %d", i);
        //        }
        //
        //        for (NSString* string in array) {
        //            NSLog(@"%@", string);
        //            NSLog(@"index = %lu", (unsigned long)[array indexOfObject: string]);
        //        }
        
        ASObject* obj1 = [[ASObject alloc] init];
        ASObject* obj2 = [[ASObject alloc] init];
        ASChild* obj3 = [[ASChild  alloc] init];
        
        obj1.name = @"Object 1";
        obj2.name = @"Object 2";
        [obj3 setName: @"Object 3"];
        
        obj3.lastName = @"Last Name";
        
        NSArray* objArray = [[NSArray alloc] initWithObjects: obj1, obj2, obj3, nil];
        
        for (ASObject* obj in objArray) {
            NSLog(@"Name = %@", obj.name);
            [obj action];
            
            if ([obj isKindOfClass: [ASChild class] ]) {
                
                ASChild* child = (ASChild*)obj;
                
                NSLog(@"last name = %@", child.lastName);
            }
        }
        
        
        
        
    }
    return 0;
}

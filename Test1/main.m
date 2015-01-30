//
//  main.m
//  Test1
//
//  Created by Lin, Forrest on 1/30/15.
//  Copyright (c) 2015 Lin, Forrest. All rights reserved.
//

#import <Foundation/Foundation.h>

// ref to
// http://cocoasamurai.blogspot.sg/2010/01/understanding-objective-c-runtime.html

@interface MyObject : NSObject

- (instancetype)init;

@end

@implementation MyObject

- (instancetype)init{
    self = [super init];
    
    return self;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        id obj1 = [NSMutableArray alloc];
        id obj2 = [[NSMutableArray alloc] init];
        
        id obj3 = [NSArray alloc];
        id obj4 = [[NSArray alloc] initWithObjects:@"Hello",nil];
        
        NSLog(@"obj1 class is %@",NSStringFromClass([obj1 class]));
        NSLog(@"obj2 class is %@",NSStringFromClass([obj2 class]));
        
        NSLog(@"obj3 class is %@",NSStringFromClass([obj3 class]));
        NSLog(@"obj4 class is %@",NSStringFromClass([obj4 class]));
        
        id obj5 = [MyObject alloc];
        id obj6 = [[MyObject alloc] init];
        
        NSLog(@"obj5 class is %@",NSStringFromClass([obj5 class]));
        NSLog(@"obj6 class is %@",NSStringFromClass([obj6 class]));

        
    }
    return 0;
}

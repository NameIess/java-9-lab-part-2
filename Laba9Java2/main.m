//
//  main.m
//  Laba9Java2
//
//  Created by Dima  on 12/7/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator* calculator = [[Calculator alloc] initWith];
        [calculator calculate];
    }
    return 0;
}

//
//  MultiplicationComand.m
//  Laba9Java2
//
//  Created by Dima  on 12/7/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+ArifmeticComand.h"

@implementation MultiplicationComand : ArifmeticComand

- (double) execute:(double)firstValue secondValue:(double)secondValue {
    return firstValue * secondValue;
}

@end

//
//  Calculator.m
//  Laba9Java2
//
//  Created by Dima  on 12/7/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Calculator.h"
#import "NSObject+ArifmeticComand.h"

@interface Calculator ()

@property (strong, nonatomic) NSDictionary* operations;

@end

@implementation Calculator

- (instancetype)initWith
{
    self = [super init];
    if (self) {
        self.operations = [[NSDictionary alloc] initWithObjectsAndKeys:
                           [[MultiplicationComand alloc] init], @"*",
                           [[DivisionComand alloc] init], @"/",
                           [[DifferenceComand alloc] init], @"-",
                           [[SumComand alloc] init], @"+",
                           nil];
    }
    return self;
}

- (void) calculate {
    NSLog(@"Enter an operation");
    char operationBuffer[1];
    scanf("%s", operationBuffer);
    NSString* operation = [[NSString alloc] initWithCString: operationBuffer encoding: NSUTF8StringEncoding];
    
    NSLog(@"Enter the first value:");
    int firstValue = 0;
    scanf("%i", firstValue);
    
    NSLog(@"Enter the second value:");
    int secondValue = 0;
    scanf("%i", secondValue);
    
    ArifmeticComand* comand = [self.operations objectForKey:operation];
    double result = [comand execute:firstValue secondValue:secondValue];
    
}

@end

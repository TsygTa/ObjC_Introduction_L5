//
//  Wheel.m
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "Wheel.h"

@implementation Wheel

- (instancetype) initWithNumber:(NSNumber *)number {
    self = [super init];
    if(self) {
        [number retain];
        [number release];
        _number = number;
        NSLog(@"Create Wheel - %@", number);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Dealloc Wheel - %@", _number);
    [_number release];
    [super dealloc];
}

@end

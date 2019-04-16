//
//  Car.m
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype) init {
    self = [super init];
    if(self) {
        NSLog(@"Create Car");
    }
    return self;
}

- (void) configWithEngine:(Engine *)engine andWheels:(NSArray *)wheels {
    [engine retain];
    [engine release];
    _engine = engine;
    NSLog(@"Add engine for car");
    
    [wheels retain];
    [wheels release];
    _wheels = wheels;
    
    for(Wheel *wheel in wheels) {
        NSLog(@"Add wheel (%@) for car", wheel.number);
    }
}

-(void) remove {
    NSLog(@"Remove engine and wheels from car");
    for(Wheel *wheel in _wheels) {
        [wheel release];
    }
    [_wheels release];
    [_engine release];
}
- (void) dealloc {
    [self remove];
    NSLog(@"Dealloc car");
    [super dealloc];
}

@end

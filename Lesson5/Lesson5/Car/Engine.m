//
//  Engine.m
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (instancetype) initWithModel:(NSString *)model {
    self = [super init];
    if(self) {
        [model retain];
        [model release];
        _model = model;
        NSLog(@"Model Engine - %@", model);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Dealloc Engine - %@", _model);
    [_model release];
    [super dealloc];
}

@end

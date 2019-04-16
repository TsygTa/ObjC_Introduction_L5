//
//  Head.m
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "Head.h"

@implementation Head

- (instancetype) initWithName:(NSString *)name {
    self = [super init];
    if(self) {
        [name retain];
        [name release];
        _name = name;
        NSLog(@"Head - %@", name);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Dealloc Head - %@", _name);
    [_name release];
    [super dealloc];
}

@end

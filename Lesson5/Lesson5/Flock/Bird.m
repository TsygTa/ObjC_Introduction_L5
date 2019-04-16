//
//  Bird.m
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "Bird.h"

@implementation Bird

- (instancetype) init {
    self = [super init];
    if(self) {
        NSLog(@"Create Bird");
    }
    return self;
}

- (void) configWithHead:(Head *)head andWings:(NSArray *)wings {
    [head retain];
    [head release];
    _head = head;
    NSLog(@"Add head for bird %@", head.name);
    
    [wings retain];
    [wings release];
    _wings = wings;
    
    for(Wing *wing in wings) {
        NSLog(@"Add wing (%@) for bird", wing.number);
    }
}

-(void) remove {
    NSLog(@"Remove head and wings");
    for(Wing *wing in _wings) {
        [wing release];
    }
    [_wings release];
    [_head release];
}
- (void) dealloc {
    [self remove];
    NSLog(@"Dealloc bird");
    [super dealloc];
}

@end

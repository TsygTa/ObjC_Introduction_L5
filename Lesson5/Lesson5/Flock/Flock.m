//
//  Flock.m
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "Flock.h"

@implementation Flock

- (instancetype) init {
    self = [super init];
    if(self) {
        NSLog(@"Create Flock");
    }
    return self;
}

- (void) configWithBirds:(NSArray *)birds {
    
    [birds retain];
    [birds release];
    _birds = birds;
    
    for(Bird *bird in birds) {
        NSLog(@"Add bird %@", bird.head.name);
    }
}

-(void) remove {
    NSLog(@"Remove birds from flock");
    for(Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}
- (void) dealloc {
    [self remove];
    NSLog(@"Dealloc flock");
    [super dealloc];
}
@end

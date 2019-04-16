//
//  Wing.m
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "Wing.h"

@implementation Wing
- (instancetype) initWithNumber:(NSString *)number {
    self = [super init];
    if(self) {
        [number retain];
        [number release];
        _number = number;
        NSLog(@"Create Wing - %@", number);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Dealloc Wing - %@", _number);
    [_number release];
    [super dealloc];
}
@end

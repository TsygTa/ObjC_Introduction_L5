//
//  Flock.h
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

- (void) configWithBirds: (NSArray *) birds;

@property (nonatomic, strong) NSArray *birds;

@end

NS_ASSUME_NONNULL_END

//
//  Car.h
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Wheel.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

- (void) configWithEngine: (Engine *)engine andWheels: (NSArray *) wheels;

@property (nonatomic, strong) Engine *engine;
@property (nonatomic, strong) NSArray *wheels;

@end

NS_ASSUME_NONNULL_END

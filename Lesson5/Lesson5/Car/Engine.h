//
//  Engine.h
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Engine : NSObject

- (instancetype) initWithModel: (NSString *) model;
@property (nonatomic, strong) NSString *model;
@end

NS_ASSUME_NONNULL_END

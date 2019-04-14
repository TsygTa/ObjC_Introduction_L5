//
//  Wing.h
//  Lesson5
//
//  Created by Tatiana Tsygankova on 14.04.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Wing : NSObject
- (instancetype) initWithNumber:(NSString *) number;
@property (nonatomic, strong) NSString *number;
@end

NS_ASSUME_NONNULL_END

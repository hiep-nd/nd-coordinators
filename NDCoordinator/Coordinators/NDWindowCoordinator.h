//
//  NDWindowCoordinator.h
//  NDCoordinator
//
//  Created by Nguyen Duc Hiep on 1/20/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDCoordinator/Abstracts/NDWindowCoordinator.h>

NS_ASSUME_NONNULL_BEGIN

@interface NDWindowCoordinator : NSObject <NDWindowCoordinator>

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithWindow:(UIWindow*)window NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END

//
//  Coordinators_NDWindowCoordinator.h
//  NDCoordinators
//
//  Created by Nguyen Duc Hiep on 1/20/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDCoordinators/Abstracts_NDWindowCoordinator.h>

NS_ASSUME_NONNULL_BEGIN

@interface NDWindowCoordinator : NSObject <NDWindowCoordinator>

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithWindow:(UIWindow*)window NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END

//
//  NDWindowCoordinator.h
//  NDCoordinator
//
//  Created by Nguyen Duc Hiep on 1/20/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDCoordinator/Abstracts/NDCoordinator.h>

@class UIWindow;

NS_ASSUME_NONNULL_BEGIN

@protocol NDWindowCoordinator <NDCoordinator>

@property(nonatomic, weak, readonly) UIWindow* window;

@end

NS_ASSUME_NONNULL_END

//
//  NDCoordinator.h
//  NDCoordinators
//
//  Created by Nguyen Duc Hiep on 1/20/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(NDCoordinatorProtocol)
@protocol NDCoordinator <NSObject>

- (void)show;
- (void)dismiss;

@end

NS_ASSUME_NONNULL_END

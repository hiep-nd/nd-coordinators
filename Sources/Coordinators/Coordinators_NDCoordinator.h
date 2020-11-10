//
//  Coordinators_NDCoordinator.h
//  NDCoordinators
//
//  Created by Nguyen Duc Hiep on 8/10/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDUtils/NDUtils.h>

#import <NDCoordinators/Abstracts_NDCoordinator.h>

NS_ASSUME_NONNULL_BEGIN

@interface NDCoordinator<__covariant Owner : NSObject*> : NDPossession <Owner>
<NDCoordinator>

    - (instancetype)initWithOwner : (Owner)owner NS_UNAVAILABLE;
- (instancetype)initWithOwner:(Owner)owner
                         show:(void (^_Nullable)(Owner))show
                      dismiss:(void (^_Nullable)(Owner))dismiss
    NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END

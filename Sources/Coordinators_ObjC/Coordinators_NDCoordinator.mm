//
//  Coordinators_NDCoordinator.mm
//  NDCoordinators
//
//  Created by Nguyen Duc Hiep on 8/10/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDCoordinators/Coordinators_NDCoordinator.h>

#import <NDLog/NDLog.h>

@implementation NDCoordinator {
  void (^_showHandler)(NSObject*);
  void (^_dismissHandler)(NSObject*);
}

- (instancetype)initWithOwner:(NSObject*)owner
                         show:(void (^)(NSObject*))show
                      dismiss:(void (^)(NSObject*))dismiss {
  self = [super initWithOwner:owner];
  if (self) {
    _showHandler = [show copy];
    _dismissHandler = [dismiss copy];
  }
  return self;
}

- (void)show {
  if (!self.owner) {
    NDAssertionFailure(@"Can not show with owner: '%@'.", self.owner);
    return;
  }

  NDCallAndReturnIfCan(_showHandler, self.owner);
}

- (void)dismiss {
  if (!self.owner) {
    NDAssertionFailure(@"Can not dismiss with owner: '%@'.", self.owner);
    return;
  }

  NDCallAndReturnIfCan(_dismissHandler, self.owner);
}

@end

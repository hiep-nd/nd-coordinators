//
//  Coordinators_NDWindowCoordinator.mm
//  NDCoordinators
//
//  Created by Nguyen Duc Hiep on 1/20/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDCoordinators/Coordinators_NDWindowCoordinator.h>

#import <UIKit/UIKit.h>

@interface NDWindowCoordinator ()

@property(nonatomic, weak) UIWindow* window;

@end

@implementation NDWindowCoordinator

- (instancetype)initWithWindow:(UIWindow*)window {
  self = [super init];
  if (self) {
    self.window = window;
  }
  return self;
}

// MARK:- NDWindowCoordinator

- (void)show {
}

- (void)dismiss {
}

@end

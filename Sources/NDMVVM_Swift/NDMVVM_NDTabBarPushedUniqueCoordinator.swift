//
//  NDMVVM_NDTabBarPushedUniqueCoordinator.swift
//  NDCoordinators
//
//  Created by Nguyen Duc Hiep on 23/11/2020.
//

import NDMVVM
import NDModificationOperators

class NDTabBarPushedUniqueCoordinator<
  ViewModel: NDViewModelProtocol, ViewController: NDViewController
>: NDPushedUniqueCoordinator<ViewModel, ViewController> {
  private(set) weak var coordinator: NDWindowCoordinatorProtocol?
  let tabIndex: Int

  init(
    coordinator: NDWindowCoordinatorProtocol, tabIndex: Int, viewModelCreator: @escaping () -> ViewModel?
  ) {
    self.coordinator = coordinator
    self.tabIndex = tabIndex
    super.init(
      navigationController: (coordinator.window?.rootViewController
        as? UITabBarController)?.viewControllers?[
          tabIndex] as? UINavigationController,
      viewModelCreator: viewModelCreator
    )
  }

  override func show() {
    (coordinator?.window?.rootViewController as? UITabBarController) •? {
      if $0.selectedIndex != tabIndex {
        $0.selectedIndex = tabIndex
      }
    }
    super.show()
  }
}

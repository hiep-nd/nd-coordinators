//
//  NDMVVM_NDPushedUniqueCoordinator.swift
//  NDCoordinators
//
//  Created by Nguyen Duc Hiep on 20/11/2020.
//

import NDLog
import NDModificationOperators
import NDMVVM
import NDUtils

open class NDPushedUniqueCoordinator<
  ViewModel: NDViewModelProtocol, ViewController: NDViewController
>: NSObject, NDCoordinatorProtocol {
  public init(
    navigationController: UINavigationController?,
    viewModelCreator: @escaping () -> ViewModel?
  ) {
    self.navigationController = navigationController
    self.viewModelCreator = viewModelCreator
    super.init()
  }

  private weak var navigationController: UINavigationController?
  private let viewModelCreator: () -> ViewModel?
  private var viewModel: ViewModel?

  open func show() {
    guard let navigationController = navigationController else {
      nd_assertionFailure("No navigation controller.")
      return
    }

    if let viewModel = viewModel,
      let viewController = viewModel.view as? UIViewController,
      navigationController.viewControllers.contains(viewController) {
      navigationController.popToViewController(
        viewController, animated: true)
      return
    }

    if let viewModel = viewModelCreator() {
      self.viewModel = viewModel
      navigationController.pushViewController(
        ViewController() • {
          nd_connect(viewModel: viewModel, view: $0)
        }, animated: true)
    } else {
      nd_assertionFailure("Can not create '\(ViewModel.self)'.")
    }
  }

  open func dismiss() {
    guard let viewModel = viewModel else {
      return
    }

    guard navigationController != nil else {
      nd_assertionFailure("No navigation controller.")
      return
    }

    self.viewModel = nil
    viewModel.uiViewControllerPopToPreviousViewModel(viewModel)
  }
}

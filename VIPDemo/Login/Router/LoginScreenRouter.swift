//
//  LoginScreenRouter.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/27/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

/// LoginScreen router.
final class LoginScreenRouter {

    // MARK: - Properties

    /// The dependency manager.
    let dependencyManager: DependencyManager
    
    /// Navigation controller.
    weak var navigationController: UINavigationController?

    /// The view controller that will present other views.
    weak var viewController: UIViewController?

    // MARK: - Init
    
    /// Create an instance of the router with its necessary dependencies.
    ///
    /// - Parameter dependencyManager: The dependency manager.
    init(dependencyManager: DependencyManager) {
        self.dependencyManager = dependencyManager
    }
    
    func routeToMainTabBar(viewController:LoginScreenViewController) {
        let mainTabbar = viewController.storyboard?.instantiateViewController(identifier: "MainTabBarController") as! MainTabBarController
        navigationController?.pushViewController(mainTabbar, animated: true)
    }
    
    func routeToForgotPassword(viewController:LoginScreenViewController) {
        
    }
}

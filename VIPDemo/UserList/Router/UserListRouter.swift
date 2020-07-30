//
//  UserListRouter.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

/// UserList router.
final class UserListRouter {

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
    
    func routeToUserDetails(selectedUserData:UserData) {
        let userDetails = viewController?.storyboard?.instantiateViewController(identifier: "UserDetailsViewController") as! UserDetailsViewController
        userDetails.userData = selectedUserData
          navigationController?.pushViewController(userDetails, animated: true)
      }
}

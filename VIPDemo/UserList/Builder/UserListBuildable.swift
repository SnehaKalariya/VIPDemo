//
//  UserListBuildable.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import Foundation
import UIKit

/// UserList feature buildable protocol
protocol UserListBuildable {
    
    /// Builds UserList view injected with all dependencies.
    /// - Returns: UserList controller.
    func build(view:UserListViewController)

}

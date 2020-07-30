//
//  LoginScreenBuildable.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/27/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import Foundation
import UIKit

/// LoginScreen feature buildable protocol
protocol LoginScreenBuildable {
    
    /// Builds LoginScreen view injected with all dependencies.
    /// - Returns: LoginScreen controller.
    func build() -> UIViewController

}

//
//  MainTabBarController.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/23/20.
//  Copyright © 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
       // self.tabBarController?.tabBar.i
        // Do any additional setup after loading the view.
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let navBar = viewController as? UserListViewController {
            print("nav is \(navBar)")
        }
    }
}

//
//  LoginScreenViewController.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/27/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

/// LoginScreen view.
class LoginScreenViewController:UIViewController,LoginScreenView {
    
    // MARK: - Properties
    var loginScreenBuilder: LoginScreenBuilder!
    /// Interactor.
    var interactor: LoginScreenViewOutput!

    /// Router.
    var router: LoginScreenRouter!

    // MARK: View life-cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupDependencyManager()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    func setupDependencyManager()  {
        let dependencyManager = DependencyManager.shared
        loginScreenBuilder = dependencyManager.loginScreenBuilder()
        router = loginScreenBuilder.buildRouter()
        //print("view is \(router)")
    }
    
    @IBAction func loginBtnClicked(_ sender: Any) {
        
        router.navigationController = self.navigationController
        router.routeToMainTabBar(viewController: self)
           
//           let mainTabbar = storyboard?.instantiateViewController(identifier: "MainTabBarController") as! MainTabBarController
//           self.navigationController?.pushViewController(mainTabbar, animated: true)
           //self.present(mainTabbar, animated: true, completion: nil)
           
           //https://reqres.in/api/users?page=2
           
           //https://samples.openweathermap.org/data/2.5/forecast/hourly?zip=94040&appid=439d4b804bc8187953eb36d2a8c26a02
       }
    
}

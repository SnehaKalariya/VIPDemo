//
//  LoginScreenInteractor.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/27/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import Foundation

/// LoginScreen interactor.
final class LoginScreenInteractor: LoginScreenViewOutput {
    
    // MARK: - Properties

    /// Presenter.
    var presenter: LoginScreenInteractorOutput!
    
    /// LoginScreen Service
    var service: LoginScreenService!
    
    // MARK: - Init/Deinit
    
    /// Initializes the LoginScreen interactor.
    /// - Parameter service: LoginScreen Service
   
    
    // MARK:- LoginScreenViewOutput Conformance
    
    func getLoginApiCall(userName:String,password:String)  {
        
    }

}

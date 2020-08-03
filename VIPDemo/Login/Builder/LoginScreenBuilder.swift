//
//  LoginScreenBuilder.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/27/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

/// LoginScreen builder.
final class LoginScreenBuilder: LoginScreenBuildable {
    
    // MARK: - Properties
    
    /// Dependency manager.
    let dependencyManager: DependencyManager
    
    // MARK: - Init
    
    /// Initializes the LoginScreen builder
    /// - Parameter dependencyManager: Dependency Manager.
    init(dependencyManager: DependencyManager) {
        self.dependencyManager = dependencyManager
    }
    
    // MARK: LoginScreenBuildable Conformance

    func build() -> UIViewController {
        let view = buildView()
        let interactor = buildInteractor()
        let presenter = buildPresenter()
        let router = buildRouter()
        
        view.interactor = interactor
        view.router = router
        interactor.presenter = presenter
        presenter.view = view
        router.viewController = view
        return view

    }
    
    // MARK: Private instance functions

    private func buildView() -> LoginScreenViewController {
        
        return LoginScreenViewController()
    }

    private func buildInteractor() -> LoginScreenInteractor {
        
        return LoginScreenInteractor()
    }
    
    private func buildPresenter() -> LoginScreenPresenter {
        return LoginScreenPresenter()
    }
    
    func buildRouter() -> LoginScreenRouter {
        return LoginScreenRouter()
    }
}

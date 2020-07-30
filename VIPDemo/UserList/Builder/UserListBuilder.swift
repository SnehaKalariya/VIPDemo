//
//  UserListBuilder.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

/// UserList builder.
final class UserListBuilder: UserListBuildable {
    
    // MARK: - Properties
    /// Dependency manager.
    let dependencyManager: DependencyManager
    
    // MARK: - Init
    
    /// Initializes the UserList builder
    /// - Parameter dependencyManager: Dependency Manager.
    init(dependencyManager: DependencyManager) {
        self.dependencyManager = dependencyManager
    }
    
    // MARK: UserListBuildable Conformance

    func build(view:UserListViewController) {
        let interactor = buildInteractor()
        let presenter = buildPresenter()
        let router = buildRouter()
        
        view.interactor = interactor
        view.router = router
        interactor.presenter = presenter
        presenter.view = view
        router.viewController = view

    }
    
    // MARK: Private instance functions

    private func buildInteractor() -> UserListInteractor {
        
        return UserListInteractor()
    }
    
    private func buildPresenter() -> UserListPresenter {
        return UserListPresenter()
    }
    
    private func buildRouter() -> UserListRouter {
        return UserListRouter(dependencyManager: dependencyManager)
    }
}

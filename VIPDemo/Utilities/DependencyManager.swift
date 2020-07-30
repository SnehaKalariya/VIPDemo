//
//  DependencyManager.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/27/20.
//  Copyright © 2020 Sneha Jarsania. All rights reserved.
//

import Foundation

class DependencyManager {
    
    static let shared = DependencyManager()
    private var _sharedLoginScreenBuilder: LoginScreenBuilder?
    
    private var _shareduserListBuilder: UserListBuilder?
    
    func loginScreenBuilder() -> LoginScreenBuilder {
          if _sharedLoginScreenBuilder == nil {
              _sharedLoginScreenBuilder = LoginScreenBuilder(dependencyManager: self)
          }
          return _sharedLoginScreenBuilder!
    }
    
    func userListBuilder() -> UserListBuilder {
             if _shareduserListBuilder == nil {
                 _shareduserListBuilder = UserListBuilder(dependencyManager: self)
             }
             return _shareduserListBuilder!
    }
    
    
}

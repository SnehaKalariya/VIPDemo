//
//  UserListInteractorOutput.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import Foundation

/// UserList interactor output.
protocol UserListInteractorOutput {

    func updatePresenterForTableData(displayModel: UserListResponseModel)
    
    func updateErrorMsg(msg:String)
    
}

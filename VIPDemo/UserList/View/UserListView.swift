//
//  UserListView.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import Foundation

/// UserList view.
protocol UserListView: class {

    func initialSetUp()
    
    func reloadTableData(_ displayModel: UserListResponseModel)
    
    func showAlertMessage(msg:String)
}

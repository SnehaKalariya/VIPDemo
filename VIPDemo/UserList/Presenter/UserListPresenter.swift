//
//  UserListPresenter.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import Foundation

/// UserList presenter.
final class UserListPresenter: UserListInteractorOutput {
    
    // MARK: - Properties
    
    /// UserList View.
    var view: UserListView?
    
    func updatePresenterForTableData(displayModel: UserListResponseModel) {
        view?.reloadTableData(displayModel)
    }
    
    func updateErrorMsg(msg:String)  {
        view?.showAlertMessage(msg: msg)
    }
    
    private func modifyResponseData(_ displayModel:UserListResponseModel){
        //Modify data as per the data presention requirement in tableview
        
        //at the end, we will get the data model and pass it to the UserListViewController
    }
    
}

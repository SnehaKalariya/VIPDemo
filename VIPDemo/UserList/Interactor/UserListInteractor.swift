//
//  UserListInteractor.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import Foundation

/// UserList interactor.
final class UserListInteractor: UserListViewOutput {
    
    // MARK: - Properties

    /// Presenter.
    var presenter: UserListInteractorOutput!
    
    
    // MARK:- UserListViewOutput Conformance
    
    func getUserListApiCall()  {
       
        ServiceHandler.getApiCall_CodableRES(url: "https://reqres.in/api/users?page=2", completion: { (resultData) in
            
            if let data = resultData{
                let decoder = JSONDecoder()
                let dataModel = try! decoder.decode(UserListResponseModel.self, from: data)
                self.presenter.updatePresenterForTableData(displayModel: dataModel)
            }else{
                self.presenter.updateErrorMsg(msg:"No data Found")
            }
            
        }) { (error) in
            self.presenter.updateErrorMsg(msg:error.localizedDescription)
        }
    }

}

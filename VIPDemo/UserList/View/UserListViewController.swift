//
//  UserListViewController.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright (c) 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

/// UserList view.
final class UserListViewController: UIViewController, UserListView {
    
    @IBOutlet var tableView: UITableView!
    // MARK: - Properties
    var userListBuilder: UserListBuilder!
    /// Interactor.
    var interactor: UserListViewOutput!
    /// Router.
    var router: UserListRouter!
    
    // MARK: Private properties
    
    fileprivate var displayModel : UserListResponseModel? {
        didSet {
            //reload data
            self.tableView.reloadData()
        }
    }

    // MARK: View life-cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialSetUp()
        
        router.navigationController = navigationController
        view.showActivityIndicator()
        
        DispatchQueue.global(qos: .background).async {
            self.interactor.getUserListApiCall()
        }
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    func initialSetUp()  {
        self.title = "User List"
        let dependencyManager = DependencyManager.shared
        userListBuilder = dependencyManager.userListBuilder()
        userListBuilder.build(view: self)
        
    }
    
    func reloadTableData(_ displayModel: UserListResponseModel)  {
       
        DispatchQueue.main.async {
            self.view.hideActivityIndicator()
            self.displayModel = displayModel
        }
        
    }
    
    func showAlertMessage(msg:String)  {
        view.hideActivityIndicator()
        let alert = UIAlertController(title: "", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
    
}

extension UserListViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let displayModel = self.displayModel else {
            return 0
        }
        return displayModel.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserListTableViewCell") as! UserListTableViewCell
        cell.name.text = self.displayModel!.data[indexPath.row].firstName
        cell.emailLbl.text = self.displayModel!.data[indexPath.row].email
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedData = self.displayModel!.data[indexPath.row]
        router.routeToUserDetails(selectedUserData: selectedData)
    }
    
    
    
}

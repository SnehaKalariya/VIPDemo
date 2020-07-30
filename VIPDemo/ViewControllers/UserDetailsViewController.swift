//
//  UserDetailsViewController.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/29/20.
//  Copyright © 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController {
    @IBOutlet weak var userdetailLbl: UILabel!
    var userData : UserData!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "User Details"
        self.userdetailLbl.text = "\(userData.firstName) \(userData.lastName) & Email is \(userData.email)"
        
        let p1 = Person(name: "sneha", id: "1")
        let prArray = [Person(name: "sneha1", id: "1"),Person(name: "sneha", id: "1"),Person(name: "sneha2", id: "1")]
        
        if prArray.contains(p1){
            print("containing val")
        }else{
            print("not containing val")
        }
        
        if prArray[1] == p1{
            print("true")
        }else{
            print("false")
        }
    }


}

class Person: Equatable {
    
    var name : String
    var id : String
    
    init(name:String,id:String) {
        self.name = name
        self.id = id
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool{
        if lhs.id == rhs.id && lhs.name == rhs.name{
            return true
        }
        return false
    }
}

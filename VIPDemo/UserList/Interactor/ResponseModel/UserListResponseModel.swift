//
//  UserListResponseModel.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright © 2020 Sneha Jarsania. All rights reserved.
//

import Foundation

// MARK: - UserListResponseModel
struct UserListResponseModel: Codable {
    let page, perPage, total, totalPages: Int
    let data: [UserData]
    let ad: Ad

    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data, ad
    }
}

// MARK: - Ad
struct Ad: Codable {
    let company: String
    let url: String
    let text: String
}

// MARK: - UserData
struct UserData: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

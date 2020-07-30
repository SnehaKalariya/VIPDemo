//
//  ServiceHandler.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright © 2020 Sneha Jarsania. All rights reserved.
//

import Foundation

class ServiceHandler {
    private static var dataTask: URLSessionDataTask?
    static func getApiCall_CodableRES(url:String,completion:@escaping (_ result : Data?)-> Void,failure:@escaping ((_ getError: Error) -> Void)) {
         
         guard let serviceUrl = URL(string: url) else { return }
         
         print("url \(serviceUrl)")
         URLSession.shared.dataTask(with: serviceUrl) { (data, response, err) in
             
             guard let data = data else {
                 return failure(err!)
             }
             
             let strEncodedResponse = String(data: data, encoding: .utf8)
            // let encodedResponseData = Data(base64Encoded: strEncodedResponse ?? "", options: [])
//             var strDecodedData: String?
//             if let aData = encodedResponseData {
//                 strDecodedData = String(data: aData, encoding: .utf8)
//                 print("string data \(String(describing: strDecodedData))")
//             }
             let jsonData: Data? = strEncodedResponse?.data(using: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
             
             completion(jsonData)
             
             }.resume()
     }
}

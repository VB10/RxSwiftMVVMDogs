//
//  DogService.swift
//  RxSwiftMVVMDogs
//
//  Created by VB on 13.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation
import Alamofire


class DogService {

    func getAllDogs(onSuccess: @escaping ([Dog]) -> Void, onError: @escaping (AFError?) -> Void) {

        AF.request("", method: .get, parameters: nil).validate().responseDecodable(of: [Dog].self) { (response) in
            guard let responses = response.value, response.response?.statusCode == 200 else {
                onError(response.error)
                return
            }
            onSuccess(responses)

        }
    }
}

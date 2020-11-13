//
//  Dog.swift
//  RxSwiftMVVMDogs
//
//  Created by VB on 13.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation

// MARK: - DogMock
struct Dog: Codable {
    let code: Int
    let dogMockDescription: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case code
        case dogMockDescription = "description"
        case imageURL = "imageUrl"
    }
}

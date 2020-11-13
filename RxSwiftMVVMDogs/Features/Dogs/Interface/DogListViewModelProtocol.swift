//
//  DogListViewModelProtocol.swift
//  RxSwiftMVVMDogs
//
//  Created by VB on 13.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation
import RxSwift
import RxRelay

protocol DogListViewModelInputs {
    var fetchTrigger: PublishSubject<Void> { get }
    var reachedBottomTrigger: PublishSubject<Void> { get }
}

protocol DogListViewModelOutputs {
    var navigationBarTitle: Observable<String> { get }
    var gitHubRepositories: Observable<[Dog]> { get }
    var isLoading: Observable<Bool> { get }
    var error: Observable<NSError> { get }
}

protocol DogListViewModelType {
    var inputs: DogListViewModelInputs { get }
    var outputs: DogListViewModelOutputs { get }
}

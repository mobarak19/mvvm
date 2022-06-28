//
//  UserRepo.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation
import RxSwift

protocol UserRepo {
    func getAllUser()->Observable<[User]>
}


protocol UserDbRepo {
    func getAllUser()->[User]
}

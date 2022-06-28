//
//  ViewModel.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation
import RxSwift
class UserVM : BaseViewModel {
    var userApiRepo:UserApiRepoImp!
    var userDbRepo :UserDbRepoImp!
    override init(){
        self.userApiRepo = UserApiRepoImp()
        self.userDbRepo = UserDbRepoImp()
    }
    
    func getAllUser() -> Observable<[User]>{
        return userApiRepo.getAllUser()
    }
}

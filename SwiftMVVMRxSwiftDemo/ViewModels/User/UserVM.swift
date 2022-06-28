//
//  ViewModel.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation

class UserVM {
    var userApiRepo:UserApiRepoImp!
    var userDbRepo :UserDbRepoImp!
    init(){
        self.userApiRepo = UserApiRepoImp()
        self.userDbRepo = UserDbRepoImp()
    }
    
}

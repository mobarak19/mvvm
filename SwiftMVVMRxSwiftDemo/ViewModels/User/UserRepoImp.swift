//
//  UserRepoImp.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation

class UserApiRepoImp:UserRepo{
    
    var api : UserApiService!
    
    init(){
        
        self.api = UserApiService.shared
    }

    func getAllUser() -> [User] {
        return []
    }
}

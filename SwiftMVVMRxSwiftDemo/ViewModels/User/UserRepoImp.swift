//
//  UserRepoImp.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation

class UserApiRepoImp:UserRepo{
    
    var api : ApiServices!
    
    init(api:ApiServices){
    
        self.api = api
    }

    func getAllUser() -> [User] {
        return []
    }
}

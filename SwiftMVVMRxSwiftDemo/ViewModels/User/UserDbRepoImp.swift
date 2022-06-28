//
//  UserDbRepoImp.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation

class UserDbRepoImp:UserDbRepo{

    var db : DatabaseServices!
    
    init(db:DatabaseServices){
        self.db = db
    }
    
    func getAllUser() -> [User] {
        
        return []
    }
}

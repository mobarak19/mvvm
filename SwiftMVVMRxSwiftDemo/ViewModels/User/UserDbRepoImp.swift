//
//  UserDbRepoImp.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation

class UserDbRepoImp:UserDbRepo{

    var db : UserTable!
    
    init(){
        
        self.db = UserTable.shared
    }
    
    func getAllUser() -> [User] {
        
        return []
    }
}

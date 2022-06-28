//
//  UserRepoImp.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation
import RxSwift
class UserApiRepoImp:UserRepo{
    
    var api : UserApiService!
    
    init(){
        
        self.api = UserApiService()
    }

    func getAllUser() -> Observable<[User]>{
        return api.getAllUser()
    }
}

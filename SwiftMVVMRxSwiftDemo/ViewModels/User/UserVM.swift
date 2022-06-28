//
//  ViewModel.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation

class UserVM {
    var repo:UserRepoImp!
    init(_ repo:UserRepoImp){
        self.repo = repo
    }
    
}

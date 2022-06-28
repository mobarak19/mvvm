//
//  UserApiServices.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation
import RxSwift
class UserApiService{
    
    static let shared = UserApiService()
    
    func fetchUser()->Observable<[User]>{
        
        return Observable<[User]>.create{ observer in
            
            guard let request = URL(string: "url") else {
                  return Disposables.create()
              }
              let task = URLSession.shared.dataTask(with: request ) { (data, response, error) in
                do {
                  let model = try JSONDecoder().decode([User].self, from: data ?? Data())
                  observer.onNext( model )
                } catch let error {
                  observer.onError(error)
                }
                observer.onCompleted()
              }
              
              task.resume()
              return Disposables.create {
                task.cancel()
              }
        }
    }
}

//
//  UserApiServices.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation
import RxSwift
class UserApiService{
    let baseUrl = "https://jsonplaceholder.typicode.com/"
    private let networkService = NetworkService.shared
    
//    func fetchUser()->Observable<[User]>{
//
//        return Observable<[User]>.create{ observer in
//
//            guard let request = URL(string: "url") else {
//                  return Disposables.create()
//              }
//              let task = URLSession.shared.dataTask(with: request ) { (data, response, error) in
//                do {
//                  let model = try JSONDecoder().decode([User].self, from: data ?? Data())
//                  observer.onNext( model )
//                } catch let error {
//                  observer.onError(error)
//                }
//                observer.onCompleted()
//              }
//
//              task.resume()
//              return Disposables.create {
//                task.cancel()
//              }
//        }
//    }
    
    func getAllUser()->Observable<[User]>{
        return networkService.execute(url: URL(string: baseUrl + "users")!)
    }
}

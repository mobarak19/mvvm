//
//  NetworkServices.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import Foundation
import RxSwift

class NetworkService{
    
    static let shared = NetworkService()
    
    func execute<T:Decodable>(url:URL)->Observable<T>{
        return Observable.create{observer -> Disposable in
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
    
                if let error = error {
                    print(error)
                    observer.onError(error)
                }
                
                guard let data = data else {
                    return
                }
                do {
                    let decoded = try? JSONDecoder().decode(T.self, from: data as Data)
                     print(decoded)
                    if let decoded = decoded {
                        observer.onNext(decoded)
                    }
                    
                } catch let error {
                    print(error)
                    observer.onError(error)
                }
             
            }
            
            task.resume()
            return Disposables.create{
                task.cancel()
            }
        }
    }
}

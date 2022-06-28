

import Foundation
import RxSwift
class UserApiService{
    let baseUrl = "https://jsonplaceholder.typicode.com/"
    private let networkService = NetworkService.shared

    func getAllUser()->Observable<[User]>{
        return networkService.execute(url: URL(string: baseUrl + "users")!)
    }
}

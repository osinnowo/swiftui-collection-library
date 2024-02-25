//
//  PhotoRepository.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 25/02/2024.
//

import Foundation

final class PhotoRepository {
    func fetchUsers() async -> Result<[User], Error> {
        let response: Result<ResponseWrapper<[User]>, HttpError> = await NetworkService<Empty, [User]>.shared.call(path: "https://jsonplaceholder.typicode.com/users")
        switch response {
            case .success(let wrapper):
                switch wrapper {
                    case let .Consumed(_, users):
                            return .success(users)
                    case .Failed(_, _):
                            return .failure(HttpError.responseError)
                }
            case .failure(_):
                return .failure(HttpError.unknown)
        }
    }
}

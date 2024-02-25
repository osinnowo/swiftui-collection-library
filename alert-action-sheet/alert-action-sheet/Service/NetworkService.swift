//
//  NetworkService.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 24/02/2024.
//

import SwiftUI

enum HttpMethod: String {
    case GET, POST, PUT, DELETE, OPTIONS
}

enum HttpError: Error {
    case unknown
    case responseError
    case urlError
}

protocol NetworkServiceProtocol {
    associatedtype T: Encodable
    associatedtype R: Decodable
    func call(path: String, method: HttpMethod, body: T?, debuggable: Bool) async -> Result<ResponseWrapper<R>, HttpError>
}

enum ResponseWrapper<T: Decodable> {
    case Consumed(Int, T)
    case Failed(Int, T?)
}

final class NetworkService<Request: Encodable, Response: Decodable>: NetworkServiceProtocol {
    typealias T = Request
    typealias R = Response
    
    private init() {}
    
    static var shared: NetworkService {
        return NetworkService()
    }
    
    func call(path: String, method: HttpMethod = .GET, body: Request? = nil, debuggable: Bool = true) async -> Result<ResponseWrapper<Response>, HttpError> {
        guard let url = URL(string: path) else {
            return .failure(HttpError.urlError)
        }
        
        var request = URLRequest(url: url)
        
        if let body = body, method != .GET, let httpBody = try? JSONEncoder().encode(body) {
            request.httpBody = httpBody
            request.httpMethod = method.rawValue
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
        
            if let rawResponse = String(data: data, encoding: .utf8), debuggable {
                print(rawResponse)
            }
            
            if let httpResponse = (response as? HTTPURLResponse) {
                let res = try JSONDecoder().decode(Response.self, from: data)
                
                let statusCode = httpResponse.statusCode
                
                if statusCode == 200 {
                    return .success(.Consumed(statusCode, res))
                } else {
                    return .success(.Failed(statusCode, nil))
                }
            } else {
                return .failure(HttpError.responseError)
            }
        } catch {
            return .failure(HttpError.unknown)
        }
    }
}

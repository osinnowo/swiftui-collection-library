//
//  NetworkService.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

/// HttpMethod
///     - GET -> GET request
enum HttpMethod: String {
    case GET
}

/// HttpError
enum HttpError: Error {
    case InvalidURL
    case networkError
    case internalServerError
    case somethingWentWrong
}

/// NetworkServiceProtocol
/// This protocol entails the bare-bone for the request and response for the concrete implement of `NetworkService`
///         - T: Generic Type T for Request
///         - R: Generic Type R for Response
protocol NetworkServiceProtocol {
    associatedtype T: Encodable // Request
    associatedtype R: Decodable // Response
    
    func makeRequest(path: String, method: HttpMethod, debuggable: Bool, body: T?) async -> Result<R, HttpError>
}

/// `NetworkService` Base class
///         - Concrete implementation of the `NetworkServiceProtocol`
///         - Request
///         - Response
final class NetworkService<Request: Encodable, Response: Decodable>: NetworkServiceProtocol {
    
    public static var shared: NetworkService {
        return NetworkService()
    }
    
    private let OK = 200
    
    typealias T = Request
    typealias R = Response
    
    func makeRequest(path: String, method: HttpMethod = .GET, debuggable: Bool = true, body: Request? = nil) async -> Result<Response, HttpError> {
        guard let url = URL(string: path) else {
            return .failure(HttpError.InvalidURL)
        }
        
        var request = URLRequest(url: url)
        
        if method != .GET, let requestBody = try? JSONEncoder().encode(body) {
            request.httpBody = requestBody
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            if let httpResponse = (response as? HTTPURLResponse), httpResponse.statusCode == OK {
                
                if let rawString = String(data: data, encoding: .utf8), debuggable {
                    print(rawString)
                }
                
                let res = try JSONDecoder().decode(Response.self, from: data)
                return .success(res)
                
            } else {
                return .failure(HttpError.internalServerError) // Convert the error code and return
            }
        } catch {
            return .failure(HttpError.somethingWentWrong)
        }
    }
}

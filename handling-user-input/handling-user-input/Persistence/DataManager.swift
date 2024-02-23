//
//  DataManager.swift
//  handling-user-input
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

struct DataManager {
    static func loadData<T: Decodable>(fileName: String) -> T? {
        guard let url: URL = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            return nil
        }
        
        do {
            let data: Data = try Data(contentsOf: url)
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            return nil
        }
    }
}

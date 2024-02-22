//
//  DataManager.swift
//  list-and-navigation
//
//  Created by Osinnowo Emmanuel on 22/02/2024.
//

import SwiftUI

class DataManager {
    static func loadData<T: Decodable>(_ fileName: String) -> T? {
        guard let url: URL = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            return nil
        }
        
        do {
            let data = try Data(contentsOf: url)
            let content = try JSONDecoder().decode(T.self, from: data)
            return content
        } catch {
            return nil
        }
    }
}

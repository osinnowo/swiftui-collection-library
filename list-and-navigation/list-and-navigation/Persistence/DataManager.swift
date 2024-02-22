//
//  DataManager.swift
//  list-and-navigation
//
//  Created by Osinnowo Emmanuel on 22/02/2024.
//

import SwiftUI

class DataManager {
    
    static func loadData<Entity: Decodable>(_ fileName: String) -> Entity? {
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            return nil
        }
        
        do {
            let data = try Data(contentsOf: file)
            let content = try JSONDecoder().decode(Entity.self, from: data)
            
            return content
        } catch {
            return nil
        }
    }
}

//
//  ContentView.swift
//  list-and-navigation
//
//  Created by Osinnowo Emmanuel on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World!")
    }
    
    private func loadData() -> [Landmark] {
        guard let data: [Landmark] = DataManager.loadData("") else {
            return []
        }
        return data
    }
}

#Preview {
    ContentView()
}

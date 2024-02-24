//
//  ContentView.swift
//  handling-user-input
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
    
    private func fetchData() -> [Landmark] {
        return DataManager.loadData(fileName: "data.json") ?? []
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

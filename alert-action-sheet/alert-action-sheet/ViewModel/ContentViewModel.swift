//
//  ContentViewModel.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 25/02/2024.
//

import Observation

@Observable class ContentViewModel {
    private (set) var content: String = ""
    
    func changeContent(with newContent: String) {
        self.content = newContent
    }
}

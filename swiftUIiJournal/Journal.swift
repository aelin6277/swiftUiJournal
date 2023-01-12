//
//  Journal.swift
//  swiftUiJournal
//
//  Created by Elin A on 2023-01-12.
//

import Foundation

class Journal : ObservableObject {
    
    @Published var entries = [JournalEntry]()
    
    init() {
        addMockData()
        
    }
    
    func addMockData() {
        entries.append(JournalEntry(content: "Sov hur mycket jag ville"))
        entries.append(JournalEntry(content: "Hade barnvakt"))
        entries.append(JournalEntry(content: "Tränade med PT"))
        entries.append(JournalEntry(content: "Drack havrelatte i solen"))
            }
    
    func update(entry: JournalEntry, with content: String) {
        if let index = entries.firstIndex(of: entry) {
            
            entries [index].content = content
        }
    }
    
}


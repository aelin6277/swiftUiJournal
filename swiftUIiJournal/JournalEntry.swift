//
//  JournalEntry.swift
//  swiftUiJournal
//
//  Created by Elin A on 2023-01-12.
//

import Foundation

struct JournalEntry : Identifiable, Equatable {
    let id = UUID()
    var content : String
    var date : Date = Date() //det blir dagens datum pga = Date()
}
//EN VIEW MÅSTE ALLTID VARA EN STRUCT
//En ObsevableObject måste vara en class

//
//  ContentView.swift
//  swiftUiJournal
//
//  Created by Elin A on 2023-01-12.
//

import SwiftUI

struct ContentView: View {
    @StateObject var journal = Journal()
    
    var body: some View {
        NavigationView {
            
            List(journal.entries) { entry in
                NavigationLink(destination: JournalEntryView(journal: journal, entry: entry) ){
                    RowView(entry: entry)
                    
                }
            }
            
            .navigationBarTitle("Journal")
            .navigationBarItems(trailing: NavigationLink(destination: JournalEntryView(journal: journal)) {
                Image(systemName: "plus.square") //Nu får jag en knapp med + i en fyrkant som tar en till en ny sida där det står Journalmed automatiskt en tillbaka-knapp!Med NavigationView ovanför
            })
        }
    }
}


struct RowView : View { //Row = view bara för en enda rad
    var entry : JournalEntry
    
    var date : String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: entry.date)
    }
    
    var body: some View {
        HStack{
            Text("\(date)")
            Spacer()
            Text(entry.content.prefix(7) + "...")
            
            
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

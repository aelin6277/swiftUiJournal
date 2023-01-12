//
//  JournalEntryView.swift
//  swiftUiJournal
//
//  Created by Elin A on 2023-01-12.
//

import SwiftUI

struct JournalEntryView: View {
    var journal : Journal
    var entry : JournalEntry? = nil //nil=Null ?
    @State var content : String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            TextEditor(text: $content) //TextEditor: en textruta som användaren kan skriva ngt in, @state behövs för att kunna skriva i den
        }
        .onAppear(){
            setContent()
        }
        .navigationBarItems(trailing: Button("Save") {
                           saveEntry()
            presentationMode.wrappedValue.dismiss()
            
        })
    }
    private func setContent(){
        if let entry = entry {
            content = entry.content
        }
        
    }
    private func saveEntry(){
        if let entry = entry {
            //uppdatera en gammal anteckning
            journal.update(entry: entry, with: content)
            
        }else{
            //Skapar en ny dagboksanteckning:
            let entry = JournalEntry(content: content)
            journal.entries.append(entry)
        }
        
        //let entry = JournalEntry(content: content) //Skriva in idagboken
        
        
        
    }
}

//struct JournalEntryView_Previews: PreviewProvider {
//    static var previews: some View {
//        JournalEntryView()
//    }
//}


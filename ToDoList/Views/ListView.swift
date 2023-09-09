//
//  ListView.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//  VIEWLIST

import SwiftUI

// other Structs

struct ListView: View {
// MARK: - DATA:
    @State var items: [String] = [
    "This is the first title !",
    "This is the 2nd title, perhaps",
    "another default title number three"
    ]
    
    var body: some View {
// MARK: - someVIEW:
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List 📝")
        .toolbar {
            ToolbarItem(id: "Edit", placement: .navigationBarLeading ) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("add", destination: AddView())
            }
        }
        
       
    } // end someView
// MARK: - METHODS
    
} // end struct

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }

      
    }
}



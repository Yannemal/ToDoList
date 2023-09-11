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
    @State var items: [ItemModel] = [
            ItemModel(title: "This is the First Order", isCompleted: false),
            ItemModel(title: "This is the Order 66", isCompleted: false),
            ItemModel(title: "The Final Order", isCompleted: true)
            ]
    
    var body: some View {
// MARK: - someVIEW:
        List {
            ForEach(items) { item in   // its not 'item for in ..' but 'its item in <Closure:> ..' //
                ListRowView(item: item)
            } // end For Each
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        } // end List
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
    // MARK: - METHODS someView
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int ) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
} // end struct

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }

    }
}



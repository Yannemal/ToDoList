//
//  ListView.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//  VIEWLIST new main page instead of ContentView

import SwiftUI

// other Structs:

struct ListView: View {
// MARK: - DATA:
    //default data to have on screen
    @EnvironmentObject var listViewModel: ListViewModel
 
    
    var body: some View {
// MARK: - someVIEW:
        
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
                   
                    .transition(AnyTransition.opacity
                        .animation(.easeIn(duration: 1.0))
                    )
            } else {
                List {
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                } // end List
                .listStyle(PlainListStyle())

            }
        } // end ZStack
        .navigationTitle("ToDo List 📝")
        .toolbar { // TopLeft and TopRight Buttons:
            ToolbarItem(id: "Edit", placement: .navigationBarLeading ) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("add", destination: AddView())
                
            }
        }
    } // end someView
    // MARK: - METHODS someView
 
    
} // end struct

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }
        .environmentObject(ListViewModel())

    }
}



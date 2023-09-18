//
//  ListViewModel.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//

import Foundation

class ListViewModel {
    
    @Published var items: [ItemModel] = []
    
    init() {
        // statement
    }
    
    // MARK: - class Methods:
    
    func getItems() {
        let newItems =  [
            ItemModel(title: "This is the First Order", isCompleted: false),
            ItemModel(title: "This is the Order 66", isCompleted: true),
            ItemModel(title: "The Final Order", isCompleted: true)
            ]
        items.append(contentsOf: newItems)
    }
    
    // https://www.youtube.com/watch?v=nwpmWu1SP1k&t=472s
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int ) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
}

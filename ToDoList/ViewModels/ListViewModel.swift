//
//  ListViewModel.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//  finished around 27 sept

import Foundation

/*
 CRUD Functions
 
 Create
 Read
 Update
 Delete
 
 */

class ListViewModel: ObservableObject  {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            //anytime this array gets affected
            saveItems()
        }
    }
    
    let itemsKey: String = "items_list"
    
    init() {
        // when instanced do this on start up
        getItems()
        
    }
    
    // MARK: - class Methods:
    
    func getItems() {

        guard let data = UserDefaults.standard.data(forKey: itemsKey),
              let savedItems = try?  JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
        self.items = savedItems
    }
    
    // https://www.youtube.com/watch?v=nwpmWu1SP1k&t=472s
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int ) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
           // search for item in the array to then run the updateCompletion method while keeping the original's UUID
            // find the first index position in the array called items where the placeholder $0 to be filtered is the same as this item's id
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems() {
        
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey )
        }
        
    }
    
}

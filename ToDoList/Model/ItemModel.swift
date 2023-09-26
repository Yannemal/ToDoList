//
//  ItemModel.swift
//  ToDoList
//  SwiftFul Thinking - Nick Sarno
//  Created by yannemal on 09/09/2023.
//

import Foundation


// immutable Struct : only its method may update its contents which are all let
struct ItemModel: Identifiable, Codable  {
    
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}

/* to be able to use this in a ForEach loop add Identifiable protocol and an id  */


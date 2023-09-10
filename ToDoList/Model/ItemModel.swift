//
//  ItemModel.swift
//  ToDoList
//  SwiftFul Thinking - Nick Sarno
//  Created by yannemal on 09/09/2023.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}

/* to be able to use this in a ForEach loop add Identifiable protocol and an id  */

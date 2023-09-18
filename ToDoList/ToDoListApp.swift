//
//  ToDoListApp.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//   

import SwiftUI

@main
struct ToDoListApp: App {
    // MARK: - data for entire app:
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    
    // MARK: - someView for entire app:
    var body: some Scene {
    
        WindowGroup {
            // when the whole app will be within a NavStack you can add it here
            NavigationStack{
                ListView()
            }
           // now NavStack .modifiers will be available without having to add NavStack in each file
        }
    }
}

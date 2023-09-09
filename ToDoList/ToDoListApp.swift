//
//  ToDoListApp.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//   

import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            // when the whole app will be within a NavStack you can add it here
            NavigationStack{
                ListView()
            }
           
        }
    }
}

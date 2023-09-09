//
//  ContentView.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
// NOT NEEDED > see ListView 

import SwiftUI
// other Structs

struct ContentView: View {
    // MARK: - DATA:
    
    var body: some View {
        // MARK: - someVIEW
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    } // end someView
    
    
    /* ************************************************************* */
    /*                      MARK: - Methods                          */
    /* ************************************************************* */

} // end struct


// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

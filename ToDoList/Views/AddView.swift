//
//  AddView.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//

import SwiftUI

struct AddView: View {
// MARK: - DATA:
    
    @State private var textFieldText: String = ""

    var body: some View {
// MARK: - someVIEW
        ScrollView {
            VStack {
                TextField("type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.gray).opacity(0.2))
                    .cornerRadius(10)
                
                Button(action:  {
                    
                }, label: {
                    Text("Save" .uppercased())
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
                
            }
            .padding(14)
            
            
        }
        .navigationTitle("Add an Item 🖊️")
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddView()
        }
    }
}

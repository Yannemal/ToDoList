//
//  AddView.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//

import SwiftUI

struct AddView: View {
// MARK: - DATA:
    @Environment(\.presentationMode) var presentationMode
    // ⬆️ helps w moving around in NavStack
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State private var textFieldText: String = ""
    // alert pop up:
    @State private var alertTitle: String = ""
    @State private var showAlert: Bool = false

    var body: some View {
// MARK: - someVIEW
        ScrollView {
            VStack {
                TextField("type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.gray).opacity(0.2))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    // build UI for button:
                    Text("Save" .uppercased())
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }) // <- notice ) the label: parameter builds it within a closure within the method's ( )
                
            }
            .padding(14)
             
            
        }
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $showAlert, content: getAlert)
            //Nick prefers funcs to keep View code clean > see below

        
        
    } // end someView
    
    // MARK: - METHODS:
    
    func saveButtonPressed() {
        // addItem
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
            // ⬆️ all this does is go back one view in NavStack
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 4 {
            // set up PopUp
            alertTitle = "please choose a longer name than 😅-🥵-😱-3 letters"
            showAlert.toggle()
            return false
            // if it ⬆️ returns here all logic ⬇️ wont be executed.
        }
        //add more IF as needed
        return true
    }
    
    func getAlert() -> Alert {
        // deprecated > View.alert
        return Alert(title: Text(alertTitle))
        
    }
    
    
} // end struct AddView



struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}

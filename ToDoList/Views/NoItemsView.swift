//
//  NoItemsView.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 26/09/2023.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack{
                Text("There are no items yet")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Feeling productive ? Click the add button and fill up your to do list!")
                NavigationLink(destination: AddView(), label: {
                    Text("add something new 🤠")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color.orange : Color.accentColor)
                        .cornerRadius(15.0)
                })
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 1.6)
                    .repeatForever()
            
            ) {
                animate.toggle()
            }
        }
    }
    
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}

//
//  NoItemsView.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 26/09/2023.
//

import SwiftUI

struct NoItemsView: View {
// MARK: - DATA:
    @State var animate: Bool = false
    
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        // MARK: - someVIEW
        ScrollView {
            VStack{
                //build UI
                Text("There are no items yet")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(animate ? .gray : .black)
                Text("Feeling productive ? Click the add button and fill up your to do list!")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView(), label: {
                    Text("add something new 🤠")
                        .foregroundColor(.white)
                        .fontWeight(animate ? .bold : .regular)
                        .font(.headline)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .cornerRadius(15.0)
                }) // end NavLink Button
                .padding(.horizontal, animate ? 35 : 55)
                .shadow(
                    color: animate ? secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.5),
                    radius: animate ? 30 : 10,
                    x:     /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,
                    y:     animate ? 10 : 30 )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? 10 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        } // end ScrollView
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    } //end someView
    
    // MARK: - Methods:
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.8) {
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
                .navigationTitle("")
            //will be filled in by the navstack
        }
    }
}

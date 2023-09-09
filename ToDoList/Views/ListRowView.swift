//
//  ListRowView.swift
//  ToDoList
//
//  Created by yannemal on 09/09/2023.
//

import SwiftUI

struct ListRowView: View {
    // MARK: - DATA:
    let title: String
    
    var body: some View {
    // MARK: - someVIEW:
        
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
    //methods:
    
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is the first title")
    }
}

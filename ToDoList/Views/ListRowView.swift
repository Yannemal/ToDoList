//
//  ListRowView.swift
//  ToDoList
//  tutor Nick - SwiftFul Thinking
//  Created by yannemal on 09/09/2023.
//

import SwiftUI

struct ListRowView: View {
    // MARK: - DATA:
    let item: ItemModel
    
    var body: some View {
    // MARK: - someVIEW:
        
        HStack {
            // build UI
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle.dashed")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(10)
    }
    //methods:
    
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "testCasePreview", isCompleted: false)
    static var item2 = ItemModel(title: "secondTestCase", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}

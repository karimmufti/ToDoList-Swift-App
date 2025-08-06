//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    let item: ToDoListItem
    
    
    var body: some View {
        HStack{
            VStack {
                Text(item.title)
                    .font(.body)
                
                Text(Date(timeIntervalSince1970: item.dueDate)
                    .formatted(date: .abbreviated, time: .shortened))
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
                        }
                        Spacer()
            
            Button{
                viewModel.toggleIsDone(item: item)
            }label:{
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }
                    }

        
    }
}

#Preview {
    ToDoListItemView(
       
        item: .init(
        id: "123",
        title: "Test Item",
        dueDate: Date().timeIntervalSince1970,
        createdDate: Date().timeIntervalSince1970,
        isDone: false
    ))
}

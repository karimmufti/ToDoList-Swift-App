//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import SwiftUI

struct ToDoListItemView: View {
    let item: ToDoListItem
    var body: some View {
        HStack{
            VStack {
                            Text(item.title)
                    .font(.title)
                
                            Text("\(Date(timeIntervalSince1970:
                                    item.dueDate).formatted(date: .abbreviated,
                                    time: .shortened))")
                            .font(.footnote)
                            .foregroundColor(Color(.secondaryLabel))
                        }
                        Spacer()
                    }

        
    }
}

#Preview {
    ToDoListItemView(item: .init(id:"123", title: "Test Item", dueDate: 12345),)
}

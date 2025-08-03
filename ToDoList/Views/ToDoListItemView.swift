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
            VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                            Text(
                                Date(timeIntervalSince1970: item.dueDate)
                                    .formatted(date: .abbreviated, time: .shortened)
                            )
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        }
                        Spacer()
                    }

        
    }
}

#Preview {
    ToDoListItemView(item: .init(id:"123", title: "Test Item", dueDate: 12345),)
}

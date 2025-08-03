//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//
import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId: String){
        // users//<id>/tools/<entries>
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todoItems")
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){
                    item in
                    Text(item.title)
                }
                .listStyle(PlainListStyle())
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button{
                    viewModel.showingNewItemView = true
                    //action
                }
                label:{
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented:
                                $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "Lbp3UdXsu9gybHExnZrSOKc1Oze2")
}

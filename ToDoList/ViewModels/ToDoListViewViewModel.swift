//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import Foundation

//ViewModel for list of items view
//Primary tab
class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String){
        
    }
}

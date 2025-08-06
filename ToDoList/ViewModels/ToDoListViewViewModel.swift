//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//
import FirebaseFirestore
import Foundation

//ViewModel for list of items view
//Primary tab
class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    
    
    /// - Parameter id:
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todoItems")
            .document(id)
            .delete()
        
    }
}

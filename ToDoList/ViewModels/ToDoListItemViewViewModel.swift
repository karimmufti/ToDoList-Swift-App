//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

//ViewModel for single list of items view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject{
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todoItems")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
}

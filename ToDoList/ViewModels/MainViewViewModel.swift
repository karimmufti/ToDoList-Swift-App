//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//
import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var currUserID: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{[weak self]_, user in
            DispatchQueue.main.async {
                self?.currUserID = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn : Bool {
        return Auth.auth().currentUser != nil
    }
}

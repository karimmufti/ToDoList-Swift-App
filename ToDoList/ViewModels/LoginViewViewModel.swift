//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    init() {}
                  
    func login(){
        guard validate() else{
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    
    
    private func validate() -> Bool{
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.isEmpty,
        !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMsg = "Please fill all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".")else {
            errorMsg = "Please enter valid email"
            return false
        }
        return true
    }
}

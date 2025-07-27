//
//  LoginView.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Todo List",
                           subtitle: "Get things Done",
                           background: .pink)
                .padding(.top, -200)
                .padding(.bottom, 100)
                
               
                //Login Form
                Form{
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", background: .blue){
                        //Atttempt to Log In//
                    }
                }
                
                //Create Accoun
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Crean An Account",
                                          destination: RegisterView())
                                   
                
                         
            
                }
                
                
                
            }
            
        }
    }
}
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }


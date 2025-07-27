//
//  RegisterView.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email  = ""
    @State var password  = ""
    
    var body: some View {
        VStack{
            HeaderView(title: "Register" ,
                       subtitle: "Start organizing your tasks" ,
                       background: .orange)
            .padding(.top, -230)
            .padding(.bottom, 100)
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "create account", background: .green){
                    //Attempt Registration//
                }
                
            }
                
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

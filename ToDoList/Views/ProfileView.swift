//
//  ProfileView.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
        }
        
    }
}

#Preview {
    ProfileView()
}

//
//  ContentView.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currUserID.isEmpty {
            accountView
        }else{
            LoginView()
        }
        
    }
    
    @ViewBuilder
    var accountView: some View{
        TabView{
            ToDoListView(userId: viewModel.currUserID)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
            
        }

    }
}

#Preview {
    MainView()
}

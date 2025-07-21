//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

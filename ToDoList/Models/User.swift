//
//  User.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval

}

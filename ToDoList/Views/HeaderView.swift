//
//  HeaderView.swift
//  ToDoList
//
//  Created by Karim Mufti on 7/21/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let background: Color
    
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundStyle(background)
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    
            }
            
        }
        .frame(width: 600, height: 600)
        
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", background: .blue)
}

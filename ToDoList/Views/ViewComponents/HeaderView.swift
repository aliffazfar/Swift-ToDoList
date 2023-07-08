//
//  HeaderView.swift
//  ToDoList
//
//  Created by Aliff Azfar on 08/07/2023.
//

import SwiftUI

struct HeaderView: View {
    
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(darkBlue)
                .rotationEffect(Angle(degrees: 15))
                
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                
                Text("Get things done")
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .preferredColorScheme(.light)
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
       
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

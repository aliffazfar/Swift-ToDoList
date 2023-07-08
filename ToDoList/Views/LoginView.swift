//
//  LoginView.swift
//  ToDoList
//
//  Created by Aliff Azfar on 08/07/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: darkBlue)
                
                // Login Forms
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Log in
                        print("Button clicked!")
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(darkBlue)
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }.padding(.top, 10)
                }
                .scrollContentBackground(.hidden)
                .offset(y: -50)
                
                
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    .foregroundColor(darkBlue)
                    .padding(.bottom, 50)
                
                }
                
                Spacer()
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

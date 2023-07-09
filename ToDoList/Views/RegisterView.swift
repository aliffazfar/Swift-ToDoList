//
//  RegisterView.swift
//  ToDoList
//
//  Created by Aliff Azfar on 08/07/2023.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: Color.orange)
            
            // Register Forms
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Register", background: .green){
                    viewModel.register()
                }
                   
            }
            .scrollContentBackground(.hidden)
            .offset(y: -50)
            .frame(height: 300)
            
            Spacer()
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

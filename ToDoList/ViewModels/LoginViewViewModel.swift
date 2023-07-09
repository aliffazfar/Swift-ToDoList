//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Aliff Azfar on 08/07/2023.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login() {
        guard validate() else {
            return
        }
        //Try log in
        Auth.auth().signIn(withEmail: email, password: password) { (auth, error) in
            if let x = error {
                  let err = x as NSError
                  switch err.code {
                  case AuthErrorCode.wrongPassword.rawValue:
                      self.errorMessage = "Wrong password, you big dummy"
                  case AuthErrorCode.invalidEmail.rawValue:
                      self.errorMessage = "Invalid email - duh"
                  case AuthErrorCode.accountExistsWithDifferentCredential.rawValue:
                      self.errorMessage = "The account already exists"
                  default:
                      self.errorMessage = "\(err.localizedDescription)"
                  }
              }
        }
    }
    
    private func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all the fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email"
            return false
        }
        return true
    }
}

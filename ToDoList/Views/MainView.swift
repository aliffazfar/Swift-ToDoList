//
//  ContentView.swift
//  ToDoList
//
//  Created by Aliff Azfar on 08/07/2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // Signed In
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Aliff Azfar on 08/07/2023.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userID: String
    
    init(userID: String){
        self.userID = userID
    }
    
    var body: some View {
        NavigationView{
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
                .accentColor(darkBlue)
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userID: "")
    }
}

//
//  ToDoListViewViewMode.swift
//  ToDoList
//
//  Created by Aliff Azfar on 08/07/2023.
//
import FirebaseFirestore
import Foundation

// Primary Tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}

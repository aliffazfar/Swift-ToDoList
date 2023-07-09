//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Aliff Azfar on 08/07/2023.
//

import SwiftUI

struct ToDoListItemsView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                    
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .accentColor(darkBlue)
            }
        }
    }
}

struct ToDoListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemsView(item: .init(
            id: "123",
            title: "Learn Swift",
            dueDate: Date().timeIntervalSince1970,
            createdDate:  Date().timeIntervalSince1970,
            isDone: false
        ))
    }
}

//
//  AddTaskView.swift
//  ManejadorDeTareas
//
//  Created by Hugo Manzano on 27/01/25.
//

import SwiftUI

struct AddTaskView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var title = ""
    @State private var description = ""
    @Binding var tasks: [Task]
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Tarea")) {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                    
                }
            }
            .navigationTitle("Add new task")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Save"){
                        let newTask = Task(id: UUID(), title: title, description: description)
                        
                        tasks.append(newTask)
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddTaskView(tasks: .constant([]))
}

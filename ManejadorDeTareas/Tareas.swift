//
//  Tareas.swift
//  ManejadorDeTareas
//
//  Created by Hugo Manzano on 27/01/25.
//

import SwiftUI

struct Tareas: View {
    
    @State private var tasks: [Task] = [
        Task(id: UUID(), title: "Comprar útiles", description: "Comprar útiles escolares"),
        Task(id: UUID(), title: "Leer tutorial de SwiftUI", description: "Leer tutorial de SwiftUI en la página de Apple")
    ]
    
    @State private var showAddTaskView: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(tasks) { task in
                    NavigationLink(destination: TaskDetailView(task: task)) {
                        Text(task.title)
                    }
                }
                .onDelete(perform: deleteTask)
            }
            .navigationTitle("Lista de Tareas")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showAddTaskView = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
        }
        .sheet(isPresented: $showAddTaskView){
            AddTaskView(tasks: $tasks)
        }
    }
    
    func deleteTask(at offset: IndexSet) {
        tasks.remove(atOffsets: offset)
    }
}

#Preview {
    Tareas()
}

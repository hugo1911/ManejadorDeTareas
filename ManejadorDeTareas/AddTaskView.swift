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
    @Binding var task: [Task]
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Tarea")) {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                    
                }
            }
        }
    }
}

#Preview {
    AddTaskView()
}

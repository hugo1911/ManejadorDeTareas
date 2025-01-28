//
//  TaskDetailView.swift
//  ManejadorDeTareas
//
//  Created by Hugo Manzano on 27/01/25.
//

import SwiftUI

struct TaskDetailView: View {
    
    var task: Task
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 20){
                Text(task.title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.red)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(LinearGradient(colors: [Color.blue, Color.purple], startPoint: .leading, endPoint: .trailing))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 10)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Descripción de mi trabajo")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                        
                    Text(task.description)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                }
                .background(Color.gray.opacity(0.2))
                .navigationTitle("Task details")
            }
            .padding()
        }
    }
}

#Preview {
    TaskDetailView(task: Task(id: UUID(), title: "Mi Task", description: "Esta es una descripción"))
}

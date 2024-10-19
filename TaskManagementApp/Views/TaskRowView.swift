//
//  TaskRowView.swift
//  TaskManagementApp
//
//  Created by Fatmanur Şahin on 18.10.2024.
//

import SwiftUI

struct TaskRowView: View {
    @Binding var task: Task
    var body: some View {
        HStack(alignment: .top, spacing: 15){
            Circle()
                .fill(indicatorColor)
                .frame(width: 10, height: 10)
                .padding(4)
                .background(.white.shadow(.drop(color: .black.opacity(0.1), radius: 3)), in:
                        .circle)
                .overlay{
                    Circle()
                        .frame(width: 50, height: 50)
                        .blendMode(.destinationOver)
                        .onTapGesture {
                            withAnimation(.snappy){
                                task.isCompleted.toggle()
                            }
                        }
                }
            VStack(alignment: .leading, spacing: 8, content: {
                Text(task.taskTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    
                
                Label(task.creationDate.format("hh:mm a"), image: "clock")
                    .font(.caption)
                    .foregroundStyle(.black)
            })
            .padding(15)
            .hSpacing(.leading)
            .background(task.tint, in: .rect(topLeadingRadius: 15, bottomLeadingRadius: 15))
            .strikethrough(task.isCompleted, pattern: .solid, color: .black)
            .offset(y: -8)
        }
    }
    var indicatorColor: Color {
        if task.isCompleted {
            return .cyan
        }
        return task.creationDate.isSameHour ? .darkBlue : (task.creationDate.isPast ? .red: .black)
    }
}

#Preview {
    ContentView()
}

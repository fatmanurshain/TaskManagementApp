import SwiftUI

struct Task: Identifiable {
    var id : UUID = .init()
    var taskTitle : String
    var creationDate : Date = .init()
    var isCompleted : Bool
    var tint : Color
}

var sampleTasks: [Task] = [
    .init(
        taskTitle: "Record Video",
        creationDate: Date.updateHour(-5),
        isCompleted: true,
        tint: .red
    ),
    .init(
        taskTitle: "Redesign Website",
        creationDate: Date.updateHour(-3),
        isCompleted: true,
        tint: .blue
    ),
    .init(
        taskTitle: "Go for a walk",
        creationDate: Date.updateHour(-4),
        isCompleted: true,
        tint: .yellow
    ),
    .init(
        taskTitle: "Edit Video",
        creationDate: Date.updateHour(-5),
        isCompleted: true,
        tint: .green
    ),
    .init(
        taskTitle: "Publish Video",
        creationDate: Date.updateHour(-5),
        isCompleted: true,
        tint: .purple
    ),
    .init(
        taskTitle: "Tweet About A New Video",
        creationDate: Date.updateHour(-5),
        isCompleted: true,
        tint: .mint
    )
]

extension Date {
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: Date()) ?? Date()
    }
}

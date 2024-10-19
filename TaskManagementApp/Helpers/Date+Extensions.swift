//
//  Date+Extensions.swift
//  TaskManagementApp
//
//  Created by Fatmanur Şahin on 22.09.2024.
//

import SwiftUI

/// Kullanıcı arayüzü oluşturmak için gerekli tarih uzantıları
extension Date {
    
    ///Tarih Formatı
    func format(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: self)
    }
    
    ///Tarihin bugün olup olmadığını kontrol et
    var isToday: Bool {
        return Calendar.current.isDateInToday(self)
    }
    
    ///Tarihin aynı saat olup olmadığını kontrol etme
    var isSameHour: Bool {
        return Calendar.current.compare(self, to: .init(), toGranularity: .hour) == .orderedSame
    }
    
    ///tarihin saati geçip geçmediğini kontrol etme
        var isPast: Bool {
            return Calendar.current.compare(self, to: .init(), toGranularity: .hour) == .orderedAscending
    }
    
    /// Verilen tarihe göre haftayı getirme
    func fetchWeek(_ date: Date = .init()) -> [WeekDay] {
        let calendar = Calendar.current
        let startOfDate = calendar.startOfDay(for: date)
        
        var week: [WeekDay] = []
        let weekForDate = calendar.dateInterval(of: .weekOfMonth, for: startOfDate)
        guard let startOfWeek = weekForDate?.start else{
            return[]
        }
        
        /// Tüm haftayı almak için
        (0..<7).forEach { index  in
            if let weekDay = calendar.date(byAdding: .day, value: index, to: startOfWeek){
                week.append(.init(date: weekDay))
            }
        }
        return week
    }
    
    // Son geçerli hafta tarihine göre gelecek haftayı oluşturma
    func createNextWeek() -> [WeekDay] {
        let calendar = Calendar.current
        let startOfLastDate = calendar.startOfDay(for: self)
        guard let nextDate = calendar.date(byAdding: .day,value: 1, to: startOfLastDate) else{
            return[]
        }
        return fetchWeek(nextDate)
    }
    
    // Son geçerli hafta tarihine göre önceki haftayı oluşturma
    func createPreviousWeek() -> [WeekDay] {
        let calendar = Calendar.current
        let startOfFirstDate = calendar.startOfDay(for: self)
        guard let previousDate = calendar.date(byAdding: .day,value: -1, to: startOfFirstDate) else{
            return[]
        }
        return fetchWeek(previousDate)
    }
    
    struct WeekDay: Identifiable {
        var id = UUID()
        var date = Date()
    }
    
}

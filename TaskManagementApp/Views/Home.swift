//
//  Home.swift
//  TaskManagementApp
//
//  Created by Fatmanur Şahin on 22.09.2024.
//

import SwiftUI

struct Home: View {
    /// Task Manager Proporties
    @State private var currentDate: Date = .init()
    @State private var weekSlider: [[Date.WeekDay]] = []
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            headerView()
        }
        .vSpacing(.top)
    }
    
    /// Header View
    @ViewBuilder
    func headerView() -> some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(spacing: 5) {
                Text(currentDate.format("MMMM"))
                    .foregroundStyle(.darkBlue)
                
                Text(currentDate.format("YYYY"))
                    .foregroundStyle(.gray)
            }
            .font(.title.bold())
            
            Text(currentDate.formatted(date: .complete, time: .omitted))
                .font(.callout)
                .fontWeight(.semibold)
                .textScale(.secondary)
                .foregroundStyle(.gray)
        }
        /// Week Slider
        
        .hSpacing(.leading)
        .overlay(alignment: .topTrailing, content: {
            Button(action: {}) {
                Image(.imageGirl)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipShape(.circle)
            }
        })
        .padding(15)
        .background(.taskColor5)
    }
}

#Preview {
    Home()
}

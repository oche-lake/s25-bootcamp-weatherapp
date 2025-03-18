//
//  WeeklyForecastView.swift
//  Weather_replicate
//
//  Created by Ocean Chen on 3/8/25.
//

import SwiftUI

struct WeeklyForecastView: View {
    var body: some View {
        ZStack{
            VStack(){
                HStack{
                    Image(systemName: "calendar")
                        .foregroundColor(.white)
                    Text("10-DAY FORECAST")
                    Spacer()
                }
                .foregroundColor(.white)
                .opacity(0.8)
                .padding(.leading)
                ScrollView(.vertical){
                    VStack{
                        WeeklyRowView(day: "Today", weather: "Cloudy", low: 45, high: 57)
                        WeeklyRowView(day: "Mon", weather:"Sunny", low: 54, high: 70 )
                        WeeklyRowView(day: "Tue", weather: "Rainy", low: 43, high: 52)
                        WeeklyRowView(day: "Wed", weather: "Rainy", low: 33, high: 45)
                        WeeklyRowView(day: "Thu", weather: "Sunny", low: 28, high: 32)
                        WeeklyRowView(day: "Fri", weather: "Cloudy", low: 25, high: 33)
                        WeeklyRowView(day: "Sat", weather: "Snowy", low: 23, high: 30)
                        WeeklyRowView(day: "Sun", weather: "Snowy", low: 21, high: 29)
                        WeeklyRowView(day: "Mon", weather: "Sunny", low: 30, high: 43)
                        WeeklyRowView(day: "Tue", weather: "Cloudy", low: 40, high: 53)
                        WeeklyRowView(day: "Wed", weather: "Windy", low: 41, high: 52)
                    }
                }
                .scrollIndicators(.hidden)
            }.padding()
        }
            .background(Color.cyan.mix(with: .blue, by: 0.38))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .ignoresSafeArea()

        }
    }
#Preview {
    WeeklyForecastView()
}

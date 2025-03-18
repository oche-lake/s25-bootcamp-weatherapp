//
//  HourlyRowView.swift
//  Weather_replicate
//
//  Created by Ocean Chen on 3/8/25.
//

import SwiftUI

struct HourlyRowView: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text(Image(systemName: "clock"))
                    Text("HOURLY FORECAST")
                    Spacer()
                }
                .foregroundColor(.white)
                .opacity(0.8)
                .padding(.leading)
                ScrollView(.horizontal){
                    HStack{
                        HourlyView(time : "Now", temp :54, weather: "Sunny")
                            .padding(.horizontal)
                        HourlyView(time : "1PM", temp: 55, weather: "Sunny")
                            .padding(.horizontal)
                        HourlyView(time: "2PM", temp: 57, weather: "Sunny")
                            .padding(.horizontal)
                        HourlyView(time:"3PM", temp: 53, weather: "Cloudy")
                            .padding(.horizontal)
                        HourlyView(time: "4PM", temp: 51, weather: "Sunny")
                            .padding(.horizontal)
                        HourlyView(time: "5PM", temp: 50, weather: "Sunset")
                            .padding(.horizontal)
                        HourlyView(time: "6PM", temp: 49, weather: "Rainy")
                            .padding(.horizontal)
                    }
                }
//                .padding(.horizontal)
                .scrollIndicators(.hidden)

            }
        }
        .padding()
        .background(Color.cyan.mix(with: .blue, by: 0.48))
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    HourlyRowView()
}

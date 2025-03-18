//
//  ContentView.swift
//  Weather_replicate
//
//  Created by Ocean Chen on 2/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:Gradient(colors:[Color.blue.opacity(0.9),Color.cyan,Color.blue.opacity(0.2)]),
                           startPoint: .top,endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack{
                Text("Chapel Hill")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                Text(" 55°")
                    .font(.system(size: 70))
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 2, trailing: 0))
                    .foregroundColor(.white)
                Text("Sunny")
                    .font(.title2)
                    .foregroundColor(.white)
                    .opacity(0.8)
                Text("H:57° L:45°")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                
                HourlyRowView()
                    .frame(width: 380)
                WeeklyForecastView()
            }
            .padding(.horizontal, 20)
        }
    }
}
#Preview {
    ContentView()
}

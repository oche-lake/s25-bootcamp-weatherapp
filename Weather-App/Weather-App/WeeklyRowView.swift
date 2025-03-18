//
//  WeeklyRowView.swift
//  Weather_replicate
//
//  Created by Ocean Chen on 3/8/25.
//

import SwiftUI

struct WeeklyRowView: View {
    var day : String
    var weather : String
    @State var low : Int
    @State var high : Int
    var body: some View {
            HStack{
                Text(day)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                if weather == "Sunny"{
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)
                        .padding(.horizontal,20)
                }
                else if weather == "Cloudy"{
                    Image(systemName: "cloud.fill")
                        .foregroundColor(.white)
                        .padding(.horizontal,20)
                        
                }
                else if weather == "Rainy"{
                    Image(systemName: "cloud.rain.fill")
                        .foregroundColor(.white)
                        .padding(.horizontal,20)
                }
                else if weather == "Snowy"{
                    Image(systemName: "snowflake")
                        .foregroundColor(.white)
                        .padding(.horizontal,20)
                }
                else if weather == "Sunset"{
                    Image(systemName: "sun.horizon.fill")
                        .foregroundColor(.yellow)
                        .padding(.horizontal,20)
                }
                else if weather=="Windy"{
                    Image(systemName: "wind")
                        .foregroundColor(.white)
                        .padding(.horizontal,20)
                }
                Text("\(low)°")
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width: 100, height: 10)
                    .foregroundColor(.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                

                Text("\(high)°")
                    .foregroundColor(.white)
            }
            .padding(.horizontal,9)
            .font(.title3)
            .padding(.vertical,2.5)
        }
    }


#Preview {
    WeeklyForecastView()
}

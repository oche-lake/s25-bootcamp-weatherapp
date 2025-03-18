//
//  HourlyView.swift
//  Weather_replicate
//
//  Created by Ocean Chen on 2/18/25.
//

import SwiftUI

struct HourlyView: View {
    var time : String
    var temp : Int
    var weather : String
    var body: some View {
        VStack{
            
            Text("\(time)")
                .foregroundColor(.white)
            if weather == "Sunny"{
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)
                    .padding(.vertical,1)
            }
            else if weather == "Cloudy"{
                Image(systemName: "cloud.fill")
                    .foregroundColor(.white)
                    .padding(.vertical,1)
            }
            else if weather == "Rainy"{
                Image(systemName: "cloud.rain.fill")
                    .foregroundColor(.white)
                    .padding(.vertical,1)
            }
            else if weather == "Snowy"{
                Image(systemName: "snowflake")
                    .foregroundColor(.white)
                    .padding(.vertical,1)
            }
            else if weather == "Sunset"{
                Image(systemName: "sun.horizon.fill")
                    .foregroundColor(.yellow)
                    .padding(.vertical,1)
            }
            else if weather=="Windy"{
                Image(systemName: "wind")
                    .foregroundColor(.white)
                    .padding(.vertical,1)
            }
            Text("\(temp)°")
                .foregroundColor(.white)
        }
    }
}

#Preview {
    HourlyRowView()
}

//
//  ContentView.swift
//  Meteostatic
//
//  Created by Aaron Gulbudagyan on 07.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("City")
                    .shadow(radius: 30)
                    .font(.custom("Copperplate", size: 24))
                    .opacity(0.5)
                Spacer()
                WeatherIconView(scale: 0.7, name: "02d")
                Spacer()
                VStack() {
                    HStack {
                        Image(systemName: "thermometer")
                        Text("25")
                    }
                    .padding()
                    Text("Clear Sky")
                }
                .opacity(0.5)
                .font(.custom("Copperplate", size: 18))
                Spacer()
                VStack {
                    Button(action: {}) {
                        DailyForecastView(iconName: "01n", day: "Today", temp: 24)
                            .shadow(radius: 10)
                    }
                    Button(action: {}) {
                        DailyForecastView(iconName: "13d", day: "Tomorrow", temp: 18)
                    }
                    DailyForecastView(iconName: "04n", day: "Wednesday", temp: 19)
                }
                .font(.custom("Copperplate", size: 14))
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

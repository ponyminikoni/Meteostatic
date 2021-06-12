//
//  DailyForecastView.swift
//  Meteostatic
//
//  Created by Aaron Gulbudagyan on 12.06.2021.
//

import SwiftUI

struct DailyForecastView: View {
    let iconName: String
    let day: String
    let temp: Int
    var body: some View {
        HStack {
            Text(day)
            Spacer()
            WeatherIconView(scale: 0.08, name: iconName)
            Text("\(temp)")
        }
    }
}

struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastView(iconName: "03d", day: "Today", temp: 24)
    }
}

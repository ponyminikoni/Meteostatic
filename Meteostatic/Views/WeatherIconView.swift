//
//  WeatherIconView.swift
//  Meteostatic
//
//  Created by Aaron Gulbudagyan on 12.06.2021.
//

import SwiftUI

struct WeatherIconView: View {
    
    let scale: CGFloat
    let name: String
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: UIScreen.main.bounds.width * scale,
                   height: UIScreen.main.bounds.width * scale)
    }
}

struct WeatherIconView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherIconView(scale: 1, name: "02d")
    }
}

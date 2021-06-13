//
//  WeatherResponse.swift
//  Meteostatic
//
//  Created by Aaron Gulbudagyan on 13.06.2021.
//

import Foundation

struct WeatherResponse: Decodable {
    let current: Current
}

struct Current: Decodable {
    let weather: [Weather]
    let temp, windSpeed: Double
}
struct Weather: Decodable {
    let icon: String
}

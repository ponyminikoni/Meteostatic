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
            VStack(spacing: 25) {
                Spacer()
                VStack {
                    Text("City")
                        .shadow(radius: 30)
                        .font(.custom("Copperplate", size: 24))
                        .opacity(0.5)
                }
                Spacer()
                VStack {
                WeatherIconView(scale: 0.7, name: "50d")
                }
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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

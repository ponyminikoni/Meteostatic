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
            VStack(spacing: width / 3) {
                Text("City")
                    .font(.custom("Courier New", size: 30))
                    .opacity(0.5)
                Image("sun")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width / 1.5, height: width / 1.5, alignment: .center)
                HStack(spacing: width / 2.5) {
                    Text("Temp")
                    Text("Wind")
                }
                .font(.custom("Courier New", size: 20))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

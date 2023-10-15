//
//  WeatherRow.swift
//  WeatheApp
//
//  Created by Edward Mayk on 5/08/23.
//

import SwiftUI

struct WeatherRow: View {
<<<<<<< HEAD
    
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: logo)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
                .background(Color(hue:1.0, saturation: 0.0, brightness: 0.888))
                .cornerRadius(50)
            VStack(alignment: .leading, spacing: 8){
                Text(name)
                    .font(.caption)
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
=======
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
>>>>>>> 5140365ac9a79791cc9f90549449dcad0c144e9f
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
<<<<<<< HEAD
        WeatherRow(logo: "thermometer", name: "Feels like", value: "8°")
=======
        WeatherRow()
>>>>>>> 5140365ac9a79791cc9f90549449dcad0c144e9f
    }
}

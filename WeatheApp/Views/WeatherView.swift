//
//  WeatherView.swift
//  WeatheApp
//
//  Created by Edward Mayk on 5/08/23.
//

import SwiftUI

struct WeatherView: View {
<<<<<<< HEAD
    var weather: ResponseBody
    
    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(weather.name)
                        .bold().font(.title)
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack{
                    HStack{
                        VStack(spacing: 20){
                            Image(systemName: "sun.max")
                                .font(.system(size: 40))
                            Text(weather.weather[0].main)
                            
                        }.frame(width: 100, alignment: .leading)
                        
                        Spacer()
                        
                        
                        Text(weather.main.feelslike.roundDouble() + "°")
                            .font(.system(size:100))
                            .fontWeight(.bold)
                            .padding()
                    }
                    
                    Spacer()
                        .frame(height: 80)
                    
                    AsyncImage(url: URL(string: "https://i.postimg.cc/x1GRdr1S/city3.png")){
                        image in image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 360)
                    }placeholder: {
                        ProgressView()
                    }
                    
                    
                    Spacer()
                    
                }
                .frame(maxWidth: .infinity)
                
            }.padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                Spacer()
                VStack(alignment: .leading, spacing: 20){
                    Text("Weather now")
                        .bold().padding(.bottom)
                    HStack{
                        WeatherRow(logo: "thermometer", name: "Min temp", value: (weather.main.tempMin.roundDouble() + "°"))
                        Spacer()
                        WeatherRow(logo: "thermometer", name: "Max temp", value: (weather.main.tempMax.roundDouble() + "°"))
                    }
                    HStack{
                        WeatherRow(logo: "wind", name: "Wind speed", value: (weather.wind.speed.roundDouble() + "°"))
                        Spacer()
                        WeatherRow(logo: "humidity", name: "Humidity", value: (weather.main.humidity.roundDouble() + "°"))
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 20)
                .foregroundColor(Color(hue: 0.656, saturation: 0.797, brightness: 0.354))
                .background(.white)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                
            }
            
        }.edgesIgnoringSafeArea(.bottom)
            .background(.blue)
            .preferredColorScheme(.dark)

        
=======
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
>>>>>>> 5140365ac9a79791cc9f90549449dcad0c144e9f
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
<<<<<<< HEAD
        WeatherView(weather: previewWeather)
=======
        WeatherView()
>>>>>>> 5140365ac9a79791cc9f90549449dcad0c144e9f
    }
}

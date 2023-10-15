//
//  ContentView.swift
//  WeatheApp
//
//  Created by Edward Mayk on 29/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManger = WeaterManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack{
            
            if let location = locationManager.location{
                if let weather = weather{
                    WeatherView(weather: weather)
                }else {
                    LoadinView()
                        .task {
                            do{
                                weather = try await
                                weatherManger.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                            } catch{
                                print("Error getting weather: \(error)")
                            }
                        }
                }
                     } else{
                    if locationManager.isLoading {
                        LoadinView()
                    }else{
                        WelcomeView()
                            .environmentObject(locationManager)
                    }
                }
        }
        .background(.blue)
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

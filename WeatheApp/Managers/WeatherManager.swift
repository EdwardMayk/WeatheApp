//
//  WeatherManager.swift
//  WeatheApp
//
//  Created by Edward Mayk on 4/08/23.
//

import Foundation
<<<<<<< HEAD
import CoreLocation

class WeaterManager{
    let API_KEY = "eeb1fca192480d29b3664e03857e2ff1"
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody{
        guard let url = URL(string:
                                "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(API_KEY)&units=metric") else {
            fatalError("Missing URL")}
        
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data")}
        
        let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
        
        return decodedData
    }
}


struct ResponseBody: Decodable{
    var coord: CoordinateResponse
    var weather: [WeatherResponse]
    var main: MainResponse
    var name: String
    var wind: WindResponse
    
    struct CoordinateResponse: Decodable{
        var lon: Double
        var lat: Double
    }
    
    struct WeatherResponse: Decodable{
        var id: Double
        var main: String
        var description: String
        var icon: String
    }
    
    struct MainResponse: Decodable{
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
    }
    
    struct WindResponse: Decodable{
        var speed: Double
        var deg: Double
    }
}

extension ResponseBody.MainResponse{
    var feelslike: Double { return feels_like }
    var tempMin: Double { return temp_min }
    var tempMax: Double { return temp_max }
}
=======
>>>>>>> 5140365ac9a79791cc9f90549449dcad0c144e9f

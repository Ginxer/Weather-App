//
//  WeatherData.swift
//  Weather App
//
//  Created by George Arias on 12/20/18.
//  Copyright © 2018 George Arias. All rights reserved.
//

import SwiftyJSON

struct WeatherData
{
    var temperature: String
    var description: String
    var icon: String
    
    
    
    init(data: Any)
    {
        let json = JSON(data)
        let currentWeather = json["currently"]
        
        if let temperature = currentWeather["temperature"].float
        {
            self.temperature = String(format: "%.0f", temperature) + " ℉"
        }
        else{
            self.temperature = "--"
        }
        
        self.description = currentWeather["summary"].string ?? "--"
        self.icon = currentWeather["icon"].string ?? "--"
        
        
        
    }
    
    
    
    
    
    
    
}



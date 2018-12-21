//
//  DarkSkyService.swift
//  Weather App
//
//  Created by George Arias on 12/20/18.
//  Copyright © 2018 George Arias. All rights reserved.
//

import Alamofire

public class DarkSkyService
{
    private static let baseURL = "https://api.darksky.net/forecast/"
    private static let apiKey = "4d3b91b9937e72a9ca5f40d8a31e0a7b"
    
    
    static func weatherForCoordinates(latitude: String, longitude: String, completion: @escaping (WeatherData?, Error?) -> ()) {
        
        let url = baseURL + apiKey + "/\(latitude),\(longitude)"
        
        Alamofire.request(url).responseJSON { response in
            switch response.result {
            case .success(let result):
                completion(WeatherData(data: result), nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
        
    }
}

//
//  currentWeatherViewModel.swift
//  Happy Weather
//
//  Created by Daya on 7/5/17.
//  Copyright © 2017 Daya. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    
    let temperature: String
    let humidity: String
    let summary: String
    let rain: String
    let icon: UIImage
    let wind: String
    let feelsLike: String
    
    init(model: CurrentWeatherData) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)°"
        let humidityPercent = Int(model.humidity * 100)
        self.humidity = "\(humidityPercent)%"
        self.summary = model.summary
        let rainPercent = Int(model.rain)
        self.rain = "\(rainPercent)%"
        let windValue = Int(model.wind)
        self.wind = "\(windValue) m/h"
        let feelsLikeValue = Int(model.feelsLike)
        self.feelsLike = "\(feelsLikeValue)°"
        
        let weatherIcon = WeatherIcons(rawValue: "\(model.icon)")
        self.icon = weatherIcon.image
    }
}

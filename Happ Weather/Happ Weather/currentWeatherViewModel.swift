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
    let icon: UIImage
    
    init(model: CurrentWeatherData) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)°"
        let humidityPercent = Int(model.humidity * 100)
        self.humidity = "\(humidityPercent)%"
        self.summary = model.summary
        
        let weatherIcon = WeatherIcons(rawValue: model.icon)
        self.icon = weatherIcon.image
    }
}

//
//  weatherIcon.swift
//  Happy Weather
//
//  Created by Daya on 7/5/17.
//  Copyright © 2017 Daya. All rights reserved.
//

import Foundation
import UIKit

enum WeatherIcons {
    case clearday
    case clearnight
    case rain
    case sleet
    case snow
    case wind
    case fog
    case cloudy
    case partlyCloudyDay
    case partlyCloudyNight
    case `default`
    
    init(rawValue: String) {
        switch rawValue {
        case "clear-day": self = .clearday
        case "clear-night": self = .clearnight
        case "rain": self = .rain
        case "snow": self = .snow
        case "sleet": self = .sleet
        case "wind": self = .wind
        case "fog": self = .fog
        case "cloudy": self = .cloudy
        case "partly-cloudy-day": self = .partlyCloudyDay
        case "partly-cloudy-night": self = .partlyCloudyNight
        default: self = .default
        }
}
}
extension WeatherIcons {
    var image: UIImage {
        switch self {
        case .clearday: return #imageLiteral(resourceName: "clear-day.png")
        case .clearnight: return  #imageLiteral(resourceName: "clear-night.png")
        case .rain: return #imageLiteral(resourceName: "rain.png")
        case .sleet: return #imageLiteral(resourceName: "sleet.png")
        case .snow: return #imageLiteral(resourceName: "snow.png")
        case .wind: return #imageLiteral(resourceName: "wind.png")
        case .fog: return #imageLiteral(resourceName: "fog.png")
        case .cloudy : return #imageLiteral(resourceName: "cloud.png")
        case .partlyCloudyDay: return #imageLiteral(resourceName: "cloudy-day.png")
        case .partlyCloudyNight: return #imageLiteral(resourceName: "cloudy-night.png")
        case .default: return #imageLiteral(resourceName: "default.png")
        }
    }
}







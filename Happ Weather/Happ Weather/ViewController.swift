//
//  ViewController.swift
//  Happ Weather
//
//  Created by Daya on 7/3/17.
//  Copyright © 2017 Daya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var feelsLikeLabel: UILabel!
    @IBOutlet weak var currentWindLabel: UILabel!
    @IBOutlet weak var currentLocationLabel: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var currentRainLabel: UILabel!
    
    @IBAction func refreshButton(_ sender: Any) {
    }
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBAction func fahrenheitButton(_ sender: Any) {
    }
    
    @IBAction func celciusButton(_ sender: Any) {
    }
    
    
    fileprivate let srkSkyApiKey = "96201d4434d0ef451b4d761f6609cf12"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let currentWeather = CurrentWeatherData(temperature: 82.1, humidity: 65, feelsLike: 84.1, summary: "hot", icon: "icon", rain: 70, wind: 13)
        let currentWeatherViewModel = CurrentWeatherViewModel(model: currentWeather)
        
        displayWeather(using: currentWeatherViewModel)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func displayWeather(using viewModel: CurrentWeatherViewModel) {
        currentTemperatureLabel.text = viewModel.temperature
        currentRainLabel.text = viewModel.rain
        currentHumidityLabel.text = viewModel.humidity
       currentWindLabel.text = viewModel.wind
        feelsLikeLabel.text = viewModel.feelsLike
        icon.image = viewModel.icon
        
    }

}


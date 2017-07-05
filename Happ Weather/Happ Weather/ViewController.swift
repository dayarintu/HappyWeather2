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
    
    @IBAction func refreshButton(_ sender: Any) {
    }
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBAction func fahrenheitButton(_ sender: Any) {
    }
    
    @IBAction func celciusButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


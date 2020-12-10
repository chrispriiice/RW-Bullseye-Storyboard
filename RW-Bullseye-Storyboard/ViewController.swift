//
//  ViewController.swift
//  RW-Bullseye-Storyboard
//
//  Created by Chris Price on 2/14/20.
//  Copyright © 2020 Chris Price. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = Int(slider.value.rounded())
        targetValue = Int.random(in: 1...100)
        startNewRound()
        updateLabels()
    }

    @IBAction func showAlert() {
        
        var difference = currentValue - targetValue
        if difference < 0 {
            difference = difference * -1
        }
        
        let message = "The value of the slider is now: \(currentValue)" +
            "\nThe target value is: \(targetValue)" +
            "\nThe difference is: \(difference)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
    
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        updateLabels()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value.rounded())
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
        targetValueLabel.text = String(targetValue)
    }
}


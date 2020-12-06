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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is now: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
    
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of the slider is now: \(slider.value)")
        currentValue = Int(slider.value)
    }
    
    
    
}


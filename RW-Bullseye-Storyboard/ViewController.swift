//
//  ViewController.swift
//  RW-Bullseye-Storyboard
//
//  Created by Chris Price on 2/14/20.
//  Copyright © 2020 Chris Price. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello World", message: "This is my first app!", preferredStyle: .alert)
    
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func knockKnock() {
        let alert = UIAlertController(title: "Who's there", message: "ya mama", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Sike", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    
}


//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anton on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var strartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        strartButton.layer.cornerRadius = 10
        yellowView.alpha = 0.3
        redView.alpha = 0.3
        greenView.alpha = 0.3
        
        yellowView.layer.cornerRadius = 60
        redView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
    }
    
}


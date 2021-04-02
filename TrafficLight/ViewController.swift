//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anton on 24.03.2021.
//

import UIKit

enum AlphaPoint {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var strartButton: UIButton!
    
    private var alphaPoints = AlphaPoint.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        strartButton.layer.cornerRadius = 10
        yellowView.alpha = 0.3
        redView.alpha = 0.3
        greenView.alpha = 0.3
        
       
        
    }

    override func viewWillLayoutSubviews() {
        yellowView.layer.cornerRadius = yellowView.layer.frame.height / 2
        redView.layer.cornerRadius = redView.layer.frame.height / 2
        greenView.layer.cornerRadius = greenView.layer.frame.height / 2
        
    }
    
    @IBAction func startsButtonPressed() {
        strartButton.setTitle("NEXT", for: .normal)
        
        switch alphaPoints {
        
        case .red:
            redView.alpha = 1
            greenView.alpha = 0.3
            alphaPoints = .yellow
        case .yellow:
            yellowView.alpha = 1
            redView.alpha = 0.3
            alphaPoints = .green
        case .green:
            greenView.alpha = 1
            yellowView.alpha = 0.3
            alphaPoints = .red
        }
    }
        
}


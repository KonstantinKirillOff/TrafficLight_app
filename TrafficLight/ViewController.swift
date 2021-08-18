//
//  ViewController.swift
//  TrafficLight
//
//  Created by Константин Кириллов on 14.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var signalsOfTrafickLite: [UIView]!
    @IBOutlet weak var startButton: UIButton!
    var currentSignal = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for signal in signalsOfTrafickLite {
            signal.alpha = 0.3
            signal.layer.cornerRadius = 60
        }
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        for signal in 0...2 {
            
            if signal == currentSignal {
                signalsOfTrafickLite[signal].alpha = 1
            } else {
                signalsOfTrafickLite[signal].alpha = 0.3
            }
        }
        
        if currentSignal == 2 {
            currentSignal = 0
        } else {
            currentSignal += 1
        }
        
    }
    
}


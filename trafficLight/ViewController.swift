//
//  ViewController.swift
//  trafficLight
//
//  Created by ErrorV9 on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        viewWillLayoutSubviews()
        
    
       
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redLight.layer.cornerRadius = redLight.frame.height / 2.0
        greenLight.layer.cornerRadius = redLight.frame.height / 2.0
        orangeLight.layer.cornerRadius = redLight.frame.height / 2.0
        }
    
    @IBAction func switchTrafficLight() {
        
    }
    
}


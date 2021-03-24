//
//  ViewController.swift
//  trafficLight
//
//  Created by ErrorV9 on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var redLignt: UIView!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        redLignt.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3

    }
    
    enum AllLight {
        case redLignt, orangeLight, greenLight
    }
    var allLigth = AllLight.redLignt
    
        
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redLignt.layer.cornerRadius = redLignt.frame.height / 2.0
        greenLight.layer.cornerRadius = greenLight.frame.height / 2.0
        orangeLight.layer.cornerRadius = orangeLight.frame.height / 2.0
        }
    
    
    
    @IBAction func switchTrafficLight() {
        switch allLigth {
        case .redLignt:
            greenLight.alpha = 0.3
            redLignt.alpha = 1
            allLigth = .orangeLight
            break
        case .orangeLight:
            redLignt.alpha = 0.3
            orangeLight.alpha = 1
            allLigth = .greenLight
        case .greenLight:
            orangeLight.alpha = 0.3
            greenLight.alpha = 1
            allLigth = .redLignt
        }
        }
        
            

        
    
        
       
            
        
        }
    
    

    



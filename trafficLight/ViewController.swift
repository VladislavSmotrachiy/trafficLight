//
//  ViewController.swift
//  trafficLight
//
//  Created by ErrorV9 on 23.03.2021.
//

import UIKit

enum AllColors {
    case firstRedLignt, secondOrangeLight,  thirdGreenLight
}

class ViewController: UIViewController {

    
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    private var allColors = AllColors.firstRedLignt
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        redLight.alpha = lightIsOff
        orangeLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redLight.layer.cornerRadius = redLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        orangeLight.layer.cornerRadius = orangeLight.frame.height / 2
    }
    
    @IBAction func switchTrafficLight() {
        if button.currentTitle == "START" {
            button.setTitle("NEXT", for: .normal)
        }
        
        switch allColors {
        case .firstRedLignt:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            allColors = .secondOrangeLight
        case .secondOrangeLight:
            redLight.alpha = lightIsOff
            orangeLight.alpha = lightIsOn
            allColors = .thirdGreenLight
        case .thirdGreenLight:
            orangeLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            allColors = .firstRedLignt
        }
    }
        
            

        
    
        
       
            
        
        }
    
    

    



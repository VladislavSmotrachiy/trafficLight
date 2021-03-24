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
    
    enum AllColors {
        case firstRedLignt, secondOrangeLight,  thirdGreenLight
    }
    
    var allColors = AllColors.firstRedLignt
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        redLignt.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redLignt.layer.cornerRadius = redLignt.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        orangeLight.layer.cornerRadius = orangeLight.frame.height / 2
        }
    
    
    @IBAction func switchTrafficLight() {
        switch allColors {
        case .firstRedLignt:
            greenLight.alpha = 0.3
            redLignt.alpha = 1
            allColors = .secondOrangeLight
            button.setTitle("NEXT", for: .normal)
        case .secondOrangeLight:
            redLignt.alpha = 0.3
            orangeLight.alpha = 1
            allColors = .thirdGreenLight
        case .thirdGreenLight:
            orangeLight.alpha = 0.3
            greenLight.alpha = 1
            allColors = .firstRedLignt
        }
    }
        
            

        
    
        
       
            
        
        }
    
    

    



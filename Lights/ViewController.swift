//
//  ViewController.swift
//  Lights
//
//  Created by Василий Полторак on 30.03.2022.
//

import UIKit

enum ColorsLights {
    case off
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet weak var redSignalView: UIView!
    @IBOutlet weak var yellowSignalView: UIView!
    @IBOutlet weak var greenSignalView: UIView!
    @IBOutlet weak var changeLightsButton: UIButton!
    
    var statusLight = ColorsLights.off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let widthSignal = yellowSignalView.frame.width
        
        redSignalView.layer.cornerRadius = widthSignal / 2
        yellowSignalView.layer.cornerRadius = widthSignal / 2
        greenSignalView.layer.cornerRadius = widthSignal / 2
        
        changeLightsButton.layer.cornerRadius = 15
        
    }
    
    @IBAction func changeLightsPressed(_ sender: UIButton) {
        
        switch statusLight {
        case .off:
            changeLightsButton.setTitle("NEXT", for: .normal)
            redSignalView.backgroundColor = .red
            statusLight = .red
            
        case .red:
            redSignalView.backgroundColor = .black
            yellowSignalView.backgroundColor = .yellow
            statusLight = .yellow
            
        case .yellow:
            yellowSignalView.backgroundColor = .black
            greenSignalView.backgroundColor = .green
            statusLight = .green
            
        case .green:
            greenSignalView.backgroundColor = .black
            redSignalView.backgroundColor = .red
            statusLight = .red
        }
        
    }
    

}


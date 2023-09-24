//
//  ViewController.swift
//  ColorLighter
//
//  Created by Alexander Agafonov on 23.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenLighter: UIView!
    @IBOutlet weak var yellowLighter: UIView!
    @IBOutlet weak var redLighter: UIView!
    @IBOutlet weak var controllButton: UIButton!
    
    private var onLight = 1.0
    private var offLight = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLighter.layer.cornerRadius = greenLighter.frame.height / 2
        yellowLighter.layer.cornerRadius = yellowLighter.frame.height / 2
        redLighter.layer.cornerRadius = redLighter.frame.height / 2
        

        greenLighter.alpha = offLight
        redLighter.alpha = offLight
        yellowLighter.alpha = offLight
        
        controllButton.layer.cornerRadius = 10
        controllButton.setTitle("Start", for: .normal)
        
    }


    @IBAction func pressControlButton() {
        controllButton.setTitle("Next", for: .normal)
        
        if redLighter.alpha == onLight {
            redLighter.alpha = offLight
            yellowLighter.alpha = onLight
        } else if yellowLighter.alpha == onLight{
            yellowLighter.alpha = offLight
            greenLighter.alpha = onLight
        }else{
            greenLighter.alpha = offLight
            redLighter.alpha = onLight
        }
        
        
    }
}


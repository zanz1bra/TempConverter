//
//  ViewController.swift
//  TempConverter
//
//  Created by erika.talberga on 26/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var convertedTempLabel: UILabel!
    
    @IBOutlet weak var tempSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var tempSlider: UISlider! {
        didSet {
            tempSlider.value = 0
            tempSlider.minimumValue = 0
            tempSlider.maximumValue = 100
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertedTempLabel.text = "32 ºF"
    }
    
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        updateTempLabelFromSlider(value: tempSlider.value)
    }
    
    func updateTempLabelFromSlider(value: Float) {
        print("tempSlider:::", Int(value))
        #warning("Logic together with segment controller. Check which segment controller is on, and make calculation, based on fahrenheit/kelvin logic")
    }

    func convertTempFrom(celsius: Int) -> (fahrenheit: Double, kelvin: Double) {
        
        return (0, 0)
    }
    
    #warning("Pass result to InfoVC without segue")
}

// 1) conversion
// 2) logic based on what is selected in tempSegmentControl

//create new view controller, where to pass information from convertedTempLabel

//search info how to pass info to new view controller without segue

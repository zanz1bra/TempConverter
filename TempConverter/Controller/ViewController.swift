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
    
    
    @IBAction func changeSegment(_ sender: UISegmentedControl) {

    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        celsiusLabel.text = "\(Int(sender.value)) ºC"
        changeSegment(tempSegmentControl)
        updateTempLabelFromSlider(value: tempSlider.value)
    }
    
    func updateTempLabelFromSlider(value: Float) {
        print("tempSlider:::", Int(value))
        
        let celsiusTemp = Int(tempSlider.value)
        
        switch tempSegmentControl.selectedSegmentIndex {
        case 0:
            let fahrenheitTemp = (celsiusTemp * 9 / 5) + 32
            convertedTempLabel.text = "\(fahrenheitTemp) ºF"
        case 1:
            let kelvinTemp = celsiusTemp + 273
            convertedTempLabel.text = "\(kelvinTemp) ºK"
        default:
            break
        }
        
//        #warning("Logic together with segment controller. Check which segment controller is on, and make calculation, based on fahrenheit/kelvin logic")
    }
    
    #warning("Pass result to InfoVC without segue")
}

// 1) conversion
// 2) logic based on what is selected in tempSegmentControl

//create new view controller, where to pass information from convertedTempLabel

//search info how to pass info to new view controller without segue

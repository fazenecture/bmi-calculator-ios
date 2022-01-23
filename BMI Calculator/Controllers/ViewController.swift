//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        print(sender.value)
        let height = String(format: "%.2f",sender.value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        print(sender.value)
        let weight = String(format: "%.0f",sender.value)
        weightLabel.text = "\(weight) Kg"
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
    
}


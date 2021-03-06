//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Vivek Kumar Singh on 24/01/22.



import UIKit

class CalculateViewController: UIViewController {



    var calculatorBrain = CalculatorBrain()
    
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
     
        calculatorBrain.calculateBmi(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.backColor = calculatorBrain.getColor()
        }
    }
    
}


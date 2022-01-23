//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vivek Kumar Singh on 24/01/22.


import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    mutating func calculateBmi (height: Float, weight: Float){
        let bmi = weight / (height * height)
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "kha lee", color: UIColor.systemOrange)
        } else if bmi < 24.9 {
            bmiValue = BMI(value: bmi, advice: "Goodd boii", color: UIColor.systemGreen)
        } else {
            bmiValue = BMI(value: bmi, advice: "Maatt khaa", color: UIColor.systemRed)
        }

    }
    
    func getBmiValue() -> String{
        let BmiToDecimalPlace = String(format: "%0.1f", bmiValue?.value ?? 0.0)
        return BmiToDecimalPlace
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No Advice"
    }
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.blue
    }
    
    
}

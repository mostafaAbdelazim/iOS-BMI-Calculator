//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Mostafa Abdelazim on 03/02/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
struct CalculateBrain {
    var bmi: BMI?

    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))

        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }

    func getBmiText() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "No BMI Data."
    }

    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    }
}

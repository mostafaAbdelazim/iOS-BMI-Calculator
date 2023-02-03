//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    var calculateBrain = CalculateBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))kg"
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        calculateBrain.calculateBMI(weight: weightSlider.value, height: heightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBmiText()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
        }
    }
}

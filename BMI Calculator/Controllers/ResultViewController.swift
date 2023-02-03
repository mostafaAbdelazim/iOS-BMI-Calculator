//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mostafa Abdelazim on 03/02/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

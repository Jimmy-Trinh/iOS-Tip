//
//  ViewController.swift
//  TipCalc (Prework)
//
//  Created by Jimmy Trinh on 12/30/20.
//

import UIKit

class ViewController: UIViewController {
    // Outlets
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSegControl: UISegmentedControl!
    @IBOutlet weak var totalView: UIView!
    
    // Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billTextField.becomeFirstResponder()
        
        // Makes total a round label
        // totalLabel.layer.cornerRadius = (totalLabel.frame.width/2)
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onTapTipLabel(_ sender: Any) {
        
    }
    
    
    //  When an edit is made to billTextField
    @IBAction func calculateTip(_ sender: Any) {
        // Get initial bill amount
        let billAmount = Double(billTextField.text!) ?? 0
        
        // Calc the tip & total
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = (billAmount * tipPercentages[tipSegControl.selectedSegmentIndex])
        let total = (billAmount + tip)
        
        // Update the tip and total amount labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}


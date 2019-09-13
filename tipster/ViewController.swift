//
//  ViewController.swift
//  tipster
//
//  Created by Paul Min on 9/9/19.
//  Copyright © 2019 Paul Min. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var partySize: UILabel!
    @IBOutlet weak var splitPayment: UILabel!
    @IBOutlet weak var partySizeStepper: UIStepper!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        //  set default tip
        let defaults = UserDefaults.standard
        let tipControlIndex = defaults.integer(forKey: "defaultTipIndex")
        tipControl.selectedSegmentIndex = tipControlIndex
        calculateTip(self)
        // Make sure billAmount is first responder and that keyboard is always visible
        
        billField.becomeFirstResponder()
        print("The party size stepper value is %f", partySizeStepper.value)
        let stepperValue = Int(partySizeStepper.value)
        partySize.text = String(stepperValue)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func adjustPartySize(_ sender: Any) {
        partySize.text = String(Int(partySizeStepper.value))
        calculateTip(self)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = Double(round(100*(bill * tipPercentages[tipControl.selectedSegmentIndex]))/100)
        let total = bill + tip
        let party = partySizeStepper.value
        let splitAmount = total / party
        let roundedSplitAmount = Double(round(splitAmount * 100)/100)
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitPayment.text = String(format: "$%.2f", roundedSplitAmount)
    }
    @IBAction func resetValues(_ sender: Any) {
        billField.text = ""
        partySizeStepper.value = 1
        calculateTip(self)
        billField.becomeFirstResponder()
    }
}


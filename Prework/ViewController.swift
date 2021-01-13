//
//  ViewController.swift
//  Prework
//
//  Created by Kripa Shakya on 12/30/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var TipPercentagelabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var billAmount: UILabel!
    @IBOutlet weak var TotalAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func Ontap(_ sender: Any) {
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]

        //Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        TipPercentagelabel.text = String(format: "$%.2f", tip)
        TotalAmountLabel.text = String(format: "$%.2f", total)
    }
}




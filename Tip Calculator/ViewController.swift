//
//  ViewController.swift
//  Tip Calculator
//
//  Created by zw on 2018/9/9.
//  Copyright © 2018 zw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    let tax:Double = 0.00;
    let taxPercentages = [0.085, 0.066, 0.056, 0.087]
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func OnTap(_ sender: AnyObject) {
        view.endEditing(true);
    }
    
    @IBAction func CalculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.15, 0.18, 0.2 ];
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    

}


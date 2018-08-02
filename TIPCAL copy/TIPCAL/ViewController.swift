//
//  ViewController.swift
//  TIPCAL
//
//  Created by zw on 2018/8/2.
//  Copyright © 2018 zw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapON(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTIP(_ sender: AnyObject) {
        let tipPercent = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}


//
//  ViewController.swift
//  SalesTax
//
//  Created by gwzr on 9/29/21.
//

import UIKit

class ViewController: UIViewController {
    var beforeTaxPrice: Float = 0
    var givenRate: Float = 0
    
    @IBOutlet weak var finalResult: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beforeTax(_ sender: UITextField) {
        if let value = Float(sender.text!){
            beforeTaxPrice = value
        } else {
            beforeTaxPrice = 0
        }
    }
    
    @IBAction func taxRateGiven(_ sender: UITextField) {
        if let value = Float(sender.text!){
            givenRate = value
        } else {
            givenRate = 0
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let salesTax = beforeTaxPrice * givenRate / 100
        let finalPrice = salesTax + beforeTaxPrice
        print(salesTax, finalPrice)
        finalResult.text = String(finalPrice)
    }
    
}


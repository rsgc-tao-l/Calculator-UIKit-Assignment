//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //connecton between the interface and code
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var currentOperation: UILabel!
    //to bring out the calculator class
    var model = Calculator()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //clean up the label
        Label.text = ""
        currentOperation.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //hooked up button
    @IBAction func zeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        Label.text = model.providedValue
    }
    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        Label.text = model.providedValue
    }
    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        Label.text = model.providedValue
    }
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        Label.text = model.providedValue
    }
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        Label.text = model.providedValue
    }
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        Label.text = model.providedValue
    }
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        Label.text = model.providedValue
    }
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        Label.text = model.providedValue
    }
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        Label.text = model.providedValue
    }
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        Label.text = model.providedValue
    }
    @IBAction func percentage(_ sender: Any) {
        model.percentage()
        if model.providedValue != ""{
            Label.text = model.providedValue
        }
        
    }
    @IBAction func plusminus(_ sender: Any) {
        model.plusminus()
        if model.providedValue != ""{
            Label.text = model.providedValue
        }
        
    }
    @IBAction func clear(_ sender: Any) {
        model.clear()
        Label.text = ""
        currentOperation.text = ""
    }
    
    @IBAction func addition(_ sender: Any) {
        model.addition()
        currentOperation.text = "+"
    }
    @IBAction func subtraction(_ sender: Any) {
        model.subtraction()
        currentOperation.text = "-"
    }
    @IBAction func decimaldot(_ sender: Any) {
        if model.providedValue != "."{
            model.addToNewValue(digit: ".")
            Label.text = model.providedValue
        }
    }
    @IBAction func divide(_ sender: Any) {
        model.divide()
        currentOperation.text = "÷"
    }
    @IBAction func multiply(_ sender: Any) {
        model.multiply()
        currentOperation.text = "x"
    }
    @IBAction func equal(_ sender: Any) {
        model.equals()
        if model.computedValue != nil{
            Label.text = String(format: "%g", model.computedValue!)
        }
        currentOperation.text = ""
    }
    
    
}


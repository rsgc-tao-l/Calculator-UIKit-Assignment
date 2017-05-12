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
    //drawing up the connection between the currentOperation label with the code
    @IBOutlet weak var currentOperation: UILabel!
    //to bring out the calculator class
    var model = Calculator()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //clean up the label
        Label.text = ""
        //the code to display the operation when given
        currentOperation.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //hooking up the buttons
    //linking the 0 button on the interface to the code.
    @IBAction func zeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        Label.text = model.providedValue
    }
    
    //linking the 1 button on the interface to the code.
    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        Label.text = model.providedValue
    }
    
    //linking the 2 button on the interface to the code.
    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        Label.text = model.providedValue
    }
    
    //linking the 3 button on the interface to the code.
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        Label.text = model.providedValue
    }
    
    //linking the 4 button on the interface to the code.
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        Label.text = model.providedValue
    }
    
    //linking the 5 button on the interface to the code.
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        Label.text = model.providedValue
    }
    
    //linking the 6 button on the interface to the code.
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        Label.text = model.providedValue
    }
    
    //linking the 7 button on the interface to the code.
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        Label.text = model.providedValue
    }
    
    //linking the 8 button on the interface to the code.
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        Label.text = model.providedValue
    }
    
    //linking the 9 button on the interface to the code.
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        Label.text = model.providedValue
    }
    
    //linking the percentage button on the interface to the code.
    @IBAction func percentage(_ sender: Any) {
        model.percentage()
        // the following if statement prevents the unexpected crashing of this code if pressed without an providedValue.
        if model.providedValue != ""{
            Label.text = model.providedValue
        }
        
    }
    
    // when the plusminus button is pressed, the following code will run triggering the functions in the calculator.swift
    @IBAction func plusminus(_ sender: Any) {
        model.plusminus()
        //this will prevent the code from crashing when pressing the plusminus button without an providedvalue.
        if model.providedValue != ""{
            Label.text = model.providedValue
        }
        
    }
    
    //linking the clear button on the interface to the code.
    @IBAction func clear(_ sender: Any) {
        model.clear()
        // reset the display for calculation and operation
        Label.text = ""
        currentOperation.text = ""
    }
    
    //linking the addition button on the interface to the code.
    @IBAction func addition(_ sender: Any) {
        model.addition()
        currentOperation.text = "+"
    }
    
    //linking the equal button on the interface to the code.
    @IBAction func subtraction(_ sender: Any) {
        model.subtraction()
        currentOperation.text = "-"
    }
    
    //linking the decimaldot button on the interface to the code.
    @IBAction func decimaldot(_ sender: Any) {
        // the if statement prevents the code from crashing when pressed without an providedvalue.
        if model.providedValue != "."{
            model.addToNewValue(digit: ".")
            Label.text = model.providedValue
        }
    }
    
    //linking the divide button on the interface to the code.
    @IBAction func divide(_ sender: Any) {
        model.divide()
        currentOperation.text = "÷"
    }
    
    //linking the multiply button on the interface to the code.
    @IBAction func multiply(_ sender: Any) {
        model.multiply()
        currentOperation.text = "x"
    }
    
    // linking the equal button on the interface to the code.
    @IBAction func equal(_ sender: Any) {
        model.equals()
        //prevent crash
        if model.computedValue != nil{
            Label.text = String(format: "%g", model.computedValue!)
        }
        //reset the operaton display.
        currentOperation.text = ""
    }
    
    
}


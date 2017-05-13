//
//  Calculator.swift
//  CalculatorTestRun
//
//  Created by Russell Gordon on 4/27/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import Foundation
class Calculator {
    // MARK: Properties
    var providedValue : String = ""
    var computedValue : Double? = nil
    var operation : Operation? = nil
    
    // MARK: Initializer(s)
    
    // MARK: Method(s) a.k.a. Function(s)
    func addToNewValue(digit : String) {
        providedValue = providedValue + digit
    }
    
    //set the calculator operation to addition
    func addition() {
        operation = Operation.addition
        updateState()
    }
    
    //set the calculator operation to minus.
    func subtraction() {
        operation = Operation.subtraction
        updateState()
    }
    
    //divide the current operated number by 100 to display its decimal form as a number out of 100.
    func percentage() {
        // if the provided value is empty , the following operation can calculate the answer using the computedValue.
        if providedValue == "" {
            // by using a seperate variable, the main variables like calculated and provided value wont be affected and thus would have less chance of having a crashing error.
            if var y = computedValue{
                y = y / 100
                //make the provided value a string version of the variable y.
                providedValue = String(format: "%g", y)
            }
            //if the providedvalue is present instead, the code will get the answer using the provided value.
        }else {
            // by using a seperate variable, the main variables like calculated and provided value wont be affected and thus would have less chance of having a crashing error.
            if var y = Double(providedValue) {
                y = y / 100
                //make the provided value a string version of the variable y.
                providedValue = String(format: "%g", y)
            }
        }
    }
    
    //Sets calculator operation to multiplication, and computes a new value, if needed.
    func multiply() {
        
        // Set the operation
        operation = Operation.multiplication
        updateState()
    }
    
    // changes the number given or operated on from negative to positive or positive to negave depending on its original value.
    func plusminus() {
        //again, if the providedvalue is not give, the operation will be done to the computedValue and displayed using the providedValue. it should be noted that whether computedvalue is nill or not is not important in this case, for it did not force unwrap it and therefore will not crash.
        if providedValue == "" {
            //the operation will be done to the temporary variable to reduce overall impact on the general code.
            if var x = computedValue{
                x = x * -1
                //make the provided value a string version of the variable y.
                providedValue = String(format: "%g", x)
            }
            //same logic, if the providedvalue is given instead, the code will simply do the calculation on it and display it.
        }else {
            //the operation will be done to the temporary variable to reduce overall impact on the general code.
            if var x = Double(providedValue) {
                x = x * -1
                //make the provided value a string version of the variable y.
                providedValue = String(format: "%g", x)
            }
        }
    }
    
    //set the operation to divide.
    func divide() {
        
        // Set the operation
        operation = Operation.division
        
        updateState()
    }
    
    /**
     Updates calculator state.
     
     This means: what the current computed value is, what the new value provided by the user is, and whether to perform an operation on the computed value and provided value.
     */
    func updateState() {
        
        if computedValue == nil {
            
            // 1. When in this branch, there is no current computed value, just a new provided value.
            
            // Now then, the only thing to do is make the provided value become the computed value.
            makeProvidedValueComputedValue()
            
        } else {
            
            // 1. When in this branch, there is a current computed value.
            
            if providedValue == "" {
                
                // 2. When in this branch, there no provided value yet (an empty string: "")
                //    Only an operation has been logged (multiply, divide, et cetera).
                
                // So, do nothing.
                
            } else {
                
                // 2. When in this branch, a new provided value has been given.
                
                // So, perform the operation!
                equals()
            }
            
        }
        
    }
    
    /**
     Determine a new computed value.
     
     The current operation is performed on the computed value and the provided value.
     */
    func equals() {
        if providedValue != "" && computedValue != nil && providedValue != "."{
            // Check operation type
            if operation == Operation.multiplication{
                computedValue = computedValue! * Double(providedValue)!
            } else if operation == Operation.division {
                computedValue = computedValue! / Double(providedValue)!
            }else if operation == Operation.addition{
                computedValue = computedValue!+Double(providedValue)!
            }else if operation == Operation.subtraction{
                computedValue = computedValue! - Double(providedValue)!
            }
            // The operation selected has been performed, so get ready to receive new operation
            // and new value
            operation = nil
            providedValue = ""
        }
    }
    
    /**
     Makes the computed value become whatever value the user has typed into the calculator.
     */
    func makeProvidedValueComputedValue() {
        
        computedValue = Double(providedValue)
        providedValue = ""
    }
    
    /**
     Resets the operation, provided value, and computed value.
     */
    func clear() {
        
        // Reset everthing
        operation = nil
        providedValue = ""
        computedValue = nil
        updateState()
    }
}

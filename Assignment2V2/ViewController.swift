//
//  ViewController.swift
//  Assignment2V2
//
//  Created by Comp1601 on 2015-02-13.
//  Copyright (c) 2015 Comp1601. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textToConvert: UITextField!
    
    @IBOutlet weak var btnDecimal: UIButton!
    
    @IBOutlet weak var btnBinary: UIButton!
    
    @IBOutlet weak var btnHex: UIButton!
    
    
    
   /*
    * A method to check the three type of substring d:, b:, h:
    * @return true or false
    */
    func containSubstring(subString:String)->Bool {
        
        if ( textToConvert.text.rangeOfString(subString) != nil) {
            return true
        }
        else {
            return false
        }
    }
    

   /*
    * An Action to convert user input to Decimal
    * @param btnDecimal
    */
    @IBAction func btnConvertToDecimal(btnDecimal: UIButton) {
        btnDecimal.backgroundColor = UIColor.greenColor()
        btnBinary.backgroundColor  = UIColor.redColor()
        btnHex.backgroundColor     = UIColor.redColor()
        var isNotWrongInput:Bool = false
        
        let inputToConvert = textToConvert.text
        
        if (containSubstring("d:")){
            
            let finalCoversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex,2))
            if ( finalCoversion.toInt() != nil) {
                textToConvert.backgroundColor = UIColor.whiteColor();
                textToConvert.text = "d:\(finalCoversion)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
        }
        
        else if (containSubstring("b:")){
            
            let finalCoversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex,2))
            
            for char in  finalCoversion {
                if ( char == "1" || char == "0") {
                    //isNotWrongInput = false
                    println( char)
                }
                else {
                    isNotWrongInput = true
                }
                
            }
            println(isNotWrongInput)
            if ( !isNotWrongInput ) {
            
                textToConvert.backgroundColor = UIColor.whiteColor();
                 textToConvert.text = "d:\(finalCoversion.binaryToInt)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
        }
            
        else if (containSubstring("h:")){
            let finalConversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex, 2))
            
            for char in  finalConversion {
                if ( char >= "A" && char <= "F" || char >= "a" && char <= "f" || char >= "0" && char <= "9") {
                    
                    //bool = false
                    println( char)
                }
                else {
                    isNotWrongInput = true
                }
                
            }
            
            if ( !isNotWrongInput) {
                textToConvert.backgroundColor = UIColor.whiteColor();
                textToConvert.text = "d:\(finalConversion.hexaToInt)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
        }
            
        else {
            textToConvert.backgroundColor = UIColor.redColor()
            textToConvert.text = "error: Invalid value"
        }
       
    
    }
    
   /*
    * An Action to convert user input to Binary
    * @param btnBinary
    */
    @IBAction func btnConvertToBinary(btnBinary: UIButton) {
        btnBinary.backgroundColor   = UIColor.greenColor()
        btnDecimal.backgroundColor  = UIColor.redColor()
        btnHex.backgroundColor      = UIColor.redColor()
        
        let inputToConvert = textToConvert.text
        var isNotWrongInput:Bool = false
        
        if (containSubstring("b:")){
            
            let finalCoversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex,2))
            
            for char in  finalCoversion {
                if ( char == "1" || char == "0") {
                    //isNotWrongInput = false
                    println( char)
                }
                else {
                    isNotWrongInput = true
                }
                
            }
            println(isNotWrongInput)
            if ( !isNotWrongInput ) {
                
                textToConvert.backgroundColor = UIColor.whiteColor();
                textToConvert.text = "b:\(finalCoversion)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
        }
        
        else if (containSubstring("d:")){
            
            let finalCoversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex,2))
            if ( finalCoversion.toInt() != nil) {
                textToConvert.backgroundColor = UIColor.whiteColor();
                textToConvert.text = "b:\(finalCoversion.intToBinary)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
        }
            
        else if (containSubstring("h:")){
            let finalConversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex, 2))
            
            for char in  finalConversion {
                if ( char >= "A" && char <= "F" || char >= "a" && char <= "f" || char >= "0" && char <= "9") {
                    
                    //bool = false
                    println( char)
                }
                else {
                    isNotWrongInput = true
                }
                
            }
            if (!isNotWrongInput) {
                textToConvert.backgroundColor = UIColor.whiteColor();
                textToConvert.text = "b:\(finalConversion.hexaToBinary)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
        }
            
        else {
            textToConvert.backgroundColor = UIColor.redColor()
            textToConvert.text = "error: Invalid value"
        }
    }
    
   /*
    * An Action to convert user input to Hexadecimal
    * @param btnHex
    */
    @IBAction func btnConvertToHex(btnHex: UIButton) {
        btnHex.backgroundColor      = UIColor.greenColor()
        btnDecimal.backgroundColor  = UIColor.redColor()
        btnBinary.backgroundColor   = UIColor.redColor()
        
        let inputToConvert = textToConvert.text
        var isNotWrongInput:Bool = false
        
        
        if (containSubstring("h:")){
            let finalConversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex, 2))
            
            for char in  finalConversion {
                if ( char >= "A" && char <= "F" || char >= "a" && char <= "f" || char >= "0" && char <= "9") {
                    
                    //bool = false
                    println( char)
                }
                else {
                    isNotWrongInput = true
                }
                
            }
            if (!isNotWrongInput) {
                textToConvert.backgroundColor = UIColor.whiteColor();
                textToConvert.text = "h:\(finalConversion)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
        }
        
        else if (containSubstring("d:")){
            
            let finalCoversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex,2))
            
            if ( finalCoversion.toInt() != nil) {
                textToConvert.backgroundColor = UIColor.whiteColor();
                textToConvert.text = "h:\(finalCoversion.intToHexa)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
            
            
        }
            
        else if (containSubstring("b:")) {
            let finalConversion = inputToConvert.substringFromIndex(advance(inputToConvert.startIndex, 2))
            
            for char in  finalConversion {
                if ( char == "1" || char == "0") {
                    //bool = false
                    println( char)
                }
                else {
                    isNotWrongInput = true
                }
            }
            
            if (!isNotWrongInput) {
                textToConvert.backgroundColor = UIColor.whiteColor();
                textToConvert.text = "h:\(finalConversion.binaryToHexa)"
            }
            else {
                textToConvert.backgroundColor = UIColor.redColor()
                textToConvert.text = "error: Invalid value"
            }
        }
            
        else {
            textToConvert.backgroundColor = UIColor.redColor()
            textToConvert.text = "error: Invalid value"
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


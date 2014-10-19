//
//  ReverseFile.swift
//  DemoClass
//
//  Created by Hieu on 10/8/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit
infix operator ~== {}
func ~== (c1: String, c2: String) -> Bool {
    if c1.lengthStr() != c2.lengthStr() { return false }
    else {
                for var n = 0; n < c1.lengthStr() ; n++  {
                        if c1.subScript(n) == c2.subScript(n) {  return true }
                                else {
                                        return false
                                        }
                }
        return true
    }
}

class ReverseFile: ConsoleScreen {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ReverseString1()
        
    }
    func ReverseString1(){
        var strArr: String = "\nThis is an example of string in programing language, swift"
        self.writeln("Origin String: \(strArr)")
        
        // Reverse String one time
        let strArr1 = strArr.reverseStr()
        self.writeln("\nReverse String of original: \n\(strArr1)")
        
        // Rererse String second times and compare with original String
        let strArr2 = strArr.reverseStr().reverseStr()
        self.writeln("\nReverse String of reverse string of original: \n\(strArr2)")
        /*
        #  Compare original string with reverse string of reverse string of it's
        #  Using operator "==" in String dictionary
        */
        if  strArr == strArr2  {
            self.writeln("\nTwo strings are equal using comprare function of String type")
        }
        else {self.writeln("\nThey are not same")}
        
        /*
        #  Test operator ~== define for String Class
        #
        */
        if  strArr ~== strArr1 {
            self.writeln("\nTwo strings are equal using extend compare operator for String")
        }
        else {self.writeln("\nThey are not same")}
        
        
    }
  
    
}

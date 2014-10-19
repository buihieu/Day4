//
//  ExtendString.swift
//  DemoClass
//
//  Created by Hieu on 10/8/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
extension String {
    func lengthStr() -> Int {
        // copy String to new String, tempStr
        var tempStr = self
        var c = 0
        var lengthStr: Int = 0
        // calculate number of characters in String
        for  c in tempStr {
            lengthStr += 1
        }    
        return lengthStr
    }
    func subScript(i: Int) -> String {
        return String(Array(self) [i] )
    }
    // function to ouput a reverse String of original String
    func reverseStr() -> String {
        // copy String to a new string, tempStr
        var n: Int = countElements(self)
        var tempStr: String = ""
        var c = n-1
        for c; c >= 0 ; c-- {
            tempStr += subScript(c)
        }
        return tempStr
    }
    
}

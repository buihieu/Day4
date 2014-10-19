//
//  Cats.swift
//  DemoClass
//
//  Created by Hieu on 10/2/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
class Cats: Animal {
  //  var catAge:Int
    init() {
       // self.catAge = catAge
        super.init(name: "Cat", sound: "meo meo")
    }
    override func descriptionAnimal() -> String {
        return self.name
    }
    override func soundAnimal() -> String {
        return self.sound
    }
    
}
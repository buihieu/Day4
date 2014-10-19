//
//  DogHw.swift
//  DemoClass
//
//  Created by Hieu on 10/10/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
class DogHw: AnimalHw {
    override init(name: String, gender: String, status: Bool, currentAge: Int, mateAge: Int, life: Int) {
        super.init(name: "Dogs", gender: "Male", status: false, currentAge: 3, mateAge: 7, life: 15)
        self.name = name
        self.gender = gender
        self.status = status
        self.currentAge = currentAge
        self.mateAge    = mateAge
        self.life   = life
    }
    
}

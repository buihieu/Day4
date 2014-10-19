//
//  Horse.swift
//  DemoClass
//
//  Created by Hieu on 10/10/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation

class HorseHw: AnimalHw {
    override init(name: String, gender: String, status: Bool, currentAge: Int, mateAge: Int, life: Int) {
        super.init(name: "Horses", gender: "Female", status: false, currentAge: 4, mateAge: 8, life: 20)
        self.name = name
        self.gender = gender
        self.status = status
        self.currentAge = currentAge
        self.mateAge    = mateAge
        self.life   = life
    }
    
}

//
//  dogTom.swift
//  DemoClass
//
//  Created by Hieu on 10/3/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
class dogTom: Dogs {
    override init(age: Double, gender: String) {
        super.init(age: 0.0, gender: "")
        self.age = age
        self.gender = gender
    }
    override func descriptionAnimal() -> String {
        return "Tom"
    }
    override func soundAnimal() -> String {
        return "Ẳng Ẳng"
    }
}

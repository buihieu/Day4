//
//  Animal.swift
//  DemoClass
//
//  Created by Hieu on 10/2/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
class Animal {
    var name: String
    var sound: String
    init (name: String, sound: String){
        self.name = name
        self.sound  = sound
    }
    func descriptionAnimal() -> String{
        return ""
    }
    
    func soundAnimal() -> String {
    return ""
    }
    func    getAge() -> Double {
    return 0
    }
  
    // Làm thế nào khai báo hàm printAverageAge() để nếu con vật nào không có thuộc tính này thì ko in ra?
}

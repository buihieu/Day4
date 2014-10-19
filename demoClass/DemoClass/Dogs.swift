//
//  Dogs.swift
//  DemoClass
//
//  Created by Hieu on 10/2/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
infix operator + {}
infix operator - {}

func + (c1: Dogs, c2: Dogs) -> Dogs {
    if c1.gender != c2.gender{
        return Dogs (age: c1.age + c2.age, gender: c1.gender)}
    else {return Dogs (age: (c1.age + c2.age)/2, gender: c2.gender)}

}
func - (c1: Dogs, c2: Dogs) -> String {
        return " They hates each other"
}
class Dogs: Animal {
 //   var name: String
    var gender: String
    var age: Double
    init(age :Double, gender: String ) {
            self.age = age
            self.gender = gender
            super.init(name: "Dog", sound: "go go")
    }
    override func descriptionAnimal() -> String {
   //  return name
        return self.name
    }
    override func soundAnimal() -> String {
      //  return sound
        return self.sound
    }
    override func getAge() -> Double {
        return age
    }
    func    getGender() -> String {
        return self.gender
    }
    func descriptionDogMating() -> String {
        return "\n -> New dog, life: \(self.getAge()), gen:\(self.getGender())"
    }

    // Làm thế nào khai báo hàm printAverageAge() để nếu con vật nào không có thuộc tính này thì ko in ra?
}
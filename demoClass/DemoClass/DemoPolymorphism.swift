//
//  DemoPolymorphism.swift
//  DemoClass
//
//  Created by techmaster on 8/22/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class DemoPolymorphism: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoPoly()
        self.demoAnimal()
       
    }
    
    func demoPoly() {
        let rec = Rectangle(width: 10, height: 20)
        let square = Square(width: 5)
        let cir = Circle(radius: 6)
        let tri = Triangle(a: 10, b: 12, c: 13.5)
        
        let shapes = [rec, square, cir, tri]
        for shape in shapes {
            self.writeln("\(shape.name) has area = \(shape.area()) and perimeter = \(shape.perimeter())\n")
        }
        
    }
    func demoAnimal(){
      //  let cat      = Cats()
      //  let dog     = Dogs(age: 13.5, gender: "male")
        let tom     = dogTom(age: 12, gender: "female")
        let mike    = dogMike(age: 9.3, gender: "male")
        let avers   =   [tom, mike]
     
        
        func getAverageAge() -> Double{
            var sumAges: Double = 0.0
            var count: Double = 0.0
            for aver in avers {
            sumAges += aver.getAge()
            ++count
            }
            return sumAges / count
        }
        for aver in avers {
            self.write("\n your dog name, \(aver.descriptionAnimal()). \n His sound is \(aver.soundAnimal())")
        }
        self.write("\n average Age of \(tom.descriptionAnimal()) and \(mike.descriptionAnimal()) is : \(getAverageAge())")
        
        /*
        let animals = [dog ,cat]
        for animal in animals {
            self.writeln("your pet is \(animal.name) : sound  is \(animal.sound)")
        }
*/
        
       
    }
    
}

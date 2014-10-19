//
//  DemoAnimalInForest.swift
//  DemoClass
//
//  Created by Hieu on 10/10/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class DemoAnimalInForest: ConsoleScreen {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.DemoAnimalInForest()
    }
    // Type your code here
    func DemoAnimalInForest() {
            var animalArr = [AnyObject]() // a swift array to store animal
            for c in 0..<10 {
            animalArr.append(TigerHw(name: "Tigers", gender: "Male", status: false, currentAge: 3, mateAge: 8, life: 20))
            animalArr.append(TigerHw(name: "Tigers", gender: "Female", status: false, currentAge: 1, mateAge: 8, life: 20))
            animalArr.append(HorseHw(name: "Horse", gender: "Male", status: false, currentAge: 4, mateAge: 5, life: 10))
            animalArr.append(HorseHw(name: "Horse", gender: "Female", status: false, currentAge: 2, mateAge: 5, life: 10))
            animalArr.append(DogHw(name: "Dogs", gender: "Male", status: false, currentAge: 1, mateAge: 1, life: 5))
            animalArr.append(DogHw(name: "Dogs", gender: "Female", status: false, currentAge: 2, mateAge: 1, life: 5))
            animalArr.append(CatHw(name: "Cats", gender: "Male", status: false, currentAge: 1, mateAge: 2, life: 3))
            animalArr.append(CatHw(name: "Cats", gender: "Female", status: false, currentAge: 1, mateAge: 2, life: 3))
            animalArr.append(PantherHw(name: "Panthers", gender: "Male", status: false, currentAge: 4, mateAge: 6, life: 30))
            animalArr.append(PantherHw(name: "Panther", gender: "Female", status: false, currentAge: 5, mateAge:6, life: 30))
            }
          //  animalArr.removeLast()
            //var k = animalArr.count
            // animalArr.removeAtIndex(10): Syntax for remove an object at index in Swift Array
            var y = 1 // start at year 1 then check the forest' status in next 50 years
            while y <= 10{
              
                /* should remove an animal if it is the age of death first
                # Check weather any animal in the age of death then delete it if need
                */
               // animalArr.removeLast()
                /*
                for i in 0..<(animalArr.count){
                    if (animalArr[i] as AnimalHw).checkIfAnimalMustRemove() {
                            animalArr.removeAtIndex(i)
                    }
                }
*/
                var newanimalArr = [AnyObject]()
                for i in 0..<(animalArr.count){
                    if !(animalArr[i] as AnimalHw).checkIfAnimalMustRemove() {
                        newanimalArr.append(animalArr[i])
                        //animalArr.removeAtIndex(i)
                    }
                    
                }
                animalArr = newanimalArr
                println("new count ", animalArr.count)
                
                var n = countElements(animalArr)
                for c in 0..<n {
                     for d in 0..<n {
                            if c != d {
                                let a = animalArr[c] as AnimalHw ++ animalArr[d] as AnimalHw
                                if a != nil {
                                    animalArr.insert(a!, atIndex: animalArr.count)
                                }
                            }
                     }
                }
                // should increase currentAge of each animal by 1
                for c in 0..<(animalArr.count) {
                        (animalArr[c] as AnimalHw).getOldOneYear()
                }
                // After 50 year, print out number of animal in forest and detail
               // self.writeln("After year \(y), number of animals: \(animalArr.count)")
                y++  // increase year by 1
            }
         self.writeln("After year 50, number of animals: \(animalArr.count)")
         for i in 0..<(animalArr).count {
                self.writeln("animal[\(i)] :  \( (animalArr[i] as AnimalHw).decriptionAnimal())")
        }
        
    }
}
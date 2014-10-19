//
//  DogMating.swift
//  DemoClass
//
//  Created by Hieu on 10/3/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIkit

class DogMating: ConsoleScreen {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoDogMating()
    }
    func demoDogMating() {
    let tom = dogTom(age: 14.5, gender: "Male")
    let  mike = dogMike(age: 8, gender: "Female")
    let son = tom + mike
    let kill    = tom - mike
    self.writeln("your 1st dog is \(tom.descriptionAnimal()), gender: male")
    self.writeln("your 2nd dog is \(mike.descriptionAnimal()), gender: female")
    self.writeln("Tom+mike   = ?   \(son.descriptionDogMating()) ")
    self.writeln("Tom & mike fight ?  \n -> \(kill)")
    }
    
}
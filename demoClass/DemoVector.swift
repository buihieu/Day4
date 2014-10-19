//
//  DemoVector.swift
//  DemoClass
//
//  Created by Hieu on 10/3/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class DemoVector: ConsoleScreen {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoVector()
    }
    
    func demoVector() {
    let c1 = Vector(horizontal: 1.0, vertical: 2.0)
    let c2 = Vector(horizontal: -2.5, vertical: 3.0)
    let c3 = c1 + c2
    let c4 = c1 - c2
    let c5 = c1 *** c2
    self.writeln("c1 =  \(c1.descriptionVector)")
    self.writeln("c2  =  \(c2.descriptionVector)")
    self.writeln("c1 + c2 = \(c3.descriptionVector)")
    self.writeln("c1 - c2 = \(c4.descriptionVector)")
    self.writeln("c1 *** c2 = \(c5)")
    }
    
}

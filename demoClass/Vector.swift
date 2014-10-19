//
//  Vector.swift
//  DemoClass
//
//  Created by Hieu on 10/3/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
infix operator + {}
infix operator - {}
infix operator *** {}
func + (ab: Vector, cd : Vector) -> Vector {
    return  Vector(horizontal: ab.horizontal + cd.horizontal, vertical: ab.vertical + cd.vertical)
            }
func - (ab: Vector, cd: Vector) -> Vector {
    return Vector(horizontal: ab.horizontal - cd.horizontal, vertical: ab.vertical - cd.vertical)
            }

func *** (ab: Vector, cd: Vector) -> Double {
            return ab.horizontal * cd.horizontal + ab.vertical * cd.vertical
}


class Vector {
    var horizontal: Double
    var vertical: Double
    init (horizontal : Double, vertical: Double) {
        self.horizontal = horizontal
        self.vertical   = vertical
        }
    var descriptionVector: String {
        return  "(\(self.horizontal) , \(self.vertical))"
    }
    
}
//
//  File.swift
//  DemoClass
//
//  Created by Hieu on 10/10/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
infix operator ++ {}
func ++ (a1: AnimalHw, a2: AnimalHw) ->  AnimalHw? {

        if (a1.name == a2.name)  &&  (a1.gender !=  a2.gender ) && (a1.status == false && a2.status == false) && (a1.currentAge > a1.mateAge && a2.currentAge > a2.mateAge){
                    a1.status = true;        a2.status  = true
                    return  AnimalHw(name: a1.name, gender: "Male", status: false, currentAge: 1, mateAge: a1.mateAge, life: a1.life)
            // Dang co bug o day: Da giao phoi voi con nay thi thoi con kia
        }
        else {return nil }
  /*
     return  AnimalHw(name: a1.name, gender: "Female", status: false, currentAge: 1, mateAge: a1.mateAge, life: a1.life)
*/
}
// declare Animal Class
class AnimalHw {
    var name: String
    var gender: String
    var status: Bool
    var currentAge: Int
    var mateAge: Int
    var life: Int
    init (name: String, gender: String, status: Bool, currentAge: Int, mateAge: Int, life:Int) {
        self.name = name
        self.gender = gender
        self.status = status
        self.currentAge = currentAge
        self.mateAge    = mateAge
        self.life   =   life
    }
    func getOldOneYear() {
        self.currentAge = currentAge+1
    }
    func checkIfAnimalMustRemove() -> Bool {
        if (self.currentAge == self.life){
            return true
        }
        else {return false}
    }
    func getName() -> String {
        return self.name
    }
    func    getGender() -> String {
        return  self.gender
    }
    func    getCurrentAge() -> Int{
        return  self.currentAge
    }
    func getMateAge() -> Int {
        return  self.mateAge
    }
    func    getLife() -> Int {
        return  self.life
    }
    func    getStatus() -> Bool{
        return  self.status
    }
    func decriptionAnimal () -> String{
        return "Name: \(name)   \ngender: \(gender) \ncurrent Age: \(currentAge) \nstatus \(status) \nlife: \(life)"
    }
    
}

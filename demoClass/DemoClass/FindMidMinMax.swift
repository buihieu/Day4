//
//  FindMinMax.swift
//  DemoClass
//
//  Created by Hieu on 10/6/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKIt
class FindMidMinMax: ConsoleScreen {
    var intArr: [Int]?
    override func viewDidLoad() {
        super.viewDidLoad()
       // intArr = [23, 12, 5, 7, 78, 35, 14, 4, 4, 17]
        self.findMinMidMax()
    }
    func findMinMidMax() {
        var intArr = [23, 12, 5, 7, 78, 39, 16, 3, 6, 29, 38, 55, 48]
        self.writeln("Mảng ban đầu là \n\(intArr)") // in ra mảng ban đầu
        var min = intArr[0], max = intArr[0] // Gán giá trị đầu bằng min, max
        var n = intArr.count
        
        for var c = 1; c < n ; c++ {
            if min > intArr[c] {    min = intArr[c]   }
            if max < intArr[c] {   max = intArr[c]  }
            // neu phan tu nhỏ hon min thi gan min cho phan tu do
            // Ngược lại nếu phân tử lớn hơn Max thì gán Max cho phần tử đó
        }
        // in ra min, max cuoi array
        self.writeln("\nMin của mảng là \(min)")
        self.writeln("\nMax của mảng là \(max)")
        var sum: Int = 0
        for var c = 0 ; c < n ; c++ {
                sum += intArr[c]
        }
        var mid: Double = 0.0  // Khai báo biến Mid đại diện cho phần tử trung bìn của mảng
        mid = Double(sum) / Double(n)  // tính phần tử trung bình
        self.writeln("\nPhần tử trung bình của mảng là \(mid)") // in ra phần tử trung bình của mảng
        // tim phan tu gan mid nhat; nearMid
        var nearMid = intArr[0] // Phần tử gần với phần tử trung bình, Mid nhất
        var temp11:Double = 0
        var temp12: Double = 0
            temp11 = (mid - Double(intArr[0]))
            temp11 = temp11.absolute  // Gia tri Tuyen Đối của Hiệu Mid và NearMid
        for var c = 1 ; c < n ; c++ { // Duyệt từ đầu mảng tới cuối mảng. Hiệu phần tử nào với Mid có giá trị truyệt đối nhỏ nhất thì phần tử đó là NearMid
                temp12 = (mid - Double(intArr[c]))
                temp12 = temp12.absolute
                if temp12 < temp11 {
                        temp11 = temp12
                        nearMid = intArr[c]
                }
        }
        self.writeln("\nPhần tử gần với phần tử trung bình nhất là : \(nearMid)")  // In ra phần tử gần với Mid nhất
       
    }
}



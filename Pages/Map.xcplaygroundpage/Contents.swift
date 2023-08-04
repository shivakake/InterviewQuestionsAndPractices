import UIKit

//MARK:- Higher Order Function is a function that takes one or more functions as arguments or returns a function as its result

//MARK:- Map a higerOrder function that can perfom single operation on colletion.

let numbers = [1,4,6,8,2,3,5,9,0,7]

/// now multiply numbers array with 5

/// k owing index with map

let indexOfArrat = numbers.enumerated().map { (index, value) in
    return "Index: \(index) has value \(value)"
}
print(indexOfArrat)

var m1: [Int] = []
for number in numbers {
    m1.append(number * 5)
}
print("M1" , m1)

let m2: [Int] = numbers.map { num in
    return num * 5
}

print("M2", m2)

let m3: [Int] = numbers.map({$0 * 5})
print("M3", m3)

let m4: [Int] = numbers.map{ $0 * 5 }
print("M4", m4)

let m5:[Int] = numbers.map({(someInt: Int) -> Int in
                            return someInt * 5})
print("M5", m5)

//MARK:- Map on dictionary

var bookDict = ["HarryPotter": 300.00, "JungleeBook": 400.00]

let returnFromDict = bookDict.map { (key, value) in
    return "Key: \(key) , Value: \(value)"
}

print(returnFromDict)

//MARK:- Map on Set

var bookSet: Set = [300.00, 400.00, 500.00]

let returnFromSet = bookSet.map { value in
    return value * 2
}
print(returnFromSet)

let returnFromSet1 = bookSet.map { $0 * 300 }
print(returnFromSet1)


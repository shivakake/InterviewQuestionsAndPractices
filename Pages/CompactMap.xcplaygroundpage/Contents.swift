import UIKit

//MARK:- ComppactMap is as same as a Map but, major diff is ComplactMap will remove nill, optinal values form collection.

var numbers = [1,2,nil,3,nil,4,5,nil,6,nil,7,8,nil,9,nil,nil]

var c1: [Int] = []
for num in numbers {
    if let number = num {
        if num == nil {
            print("Nill Value")
        } else {
            c1.append(number)
        }
    }
}
print("C1", c1)

var c2: [Int] = numbers.compactMap { (num) in
    return num
}
print("C2", c2)

let c3: [Int] = numbers.compactMap({$0})
print("C3", c3)

let c4: [Int] = numbers.compactMap{$0}
print("C4", c4)

//Now multiply the numbers array with 5.

let c5: [Int] = numbers.compactMap({$0}).map({$0 * 5})
print("C5", c5)

import UIKit

//MARK:- Flat map is func that can merge the collection of collection into single colletion.

var numbersArray:[[Int]] = [[1,2,3],[4,5,6],[7,8,9]]

var f1: [Int] = []
for numberArray in numbersArray {
   f1 = f1 + numberArray // f2 += numberArray
}
print("F1", f1)

let f2: [Int] = numbersArray.flatMap { array in
    return array
}
print("F2", f2)

let f3: [Int] = numbersArray.flatMap ({ $0 })

print("F3", f3)

let f4: [Int] = numbersArray.flatMap { $0 }

print("F4", f4)

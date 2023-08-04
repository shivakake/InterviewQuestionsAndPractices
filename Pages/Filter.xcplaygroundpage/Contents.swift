import UIKit

//
let numbers = [1,4,6,8,2,3,5,9,0,7]

/// Separate the even number form the list
/// Even is sarisankya , Odd is Basisankya

var tempArray: [Int] = []
for num in numbers {
    if num % 2 == 0 {
        tempArray.append(num)
    } else {
        //        dump("Number is not Even Number")
    }
}
//print("Temp Array:",tempArray)

let tempArray1 = numbers.filter { (num) -> Bool in
    return num % 2 == 0
}
//print("Temp Array 1:",tempArray1)

let tempArray2 = numbers.filter { (num) in
    return num % 2 == 0
}
//print("Temp Array 2:",tempArray2)

let tempArray3 = numbers.filter { (num) in
    num % 2 == 0
}
//print("Temp Array 3:",tempArray3)

let tempArray4 = numbers.filter({$0 % 2 == 0})
//print("Temp Array 4:",tempArray4)

let tempArray5 = numbers.filter{$0 % 2 == 0}
//print("Temp Array 5:",tempArray5)


let evenArray = numbers.filter { (num) -> Bool in
    return num % 2 == 0
}
//print("Even Numbers Array is:",evenArray)

let oddArray = numbers.filter { (num) -> Bool in
    return num % 2 != 0
}
//print("Odd Numbers Array is:",oddArray)

let greaterThan5Array = numbers.filter { (num) -> Bool in
    return num > 5
}
//print("Greater Than 5 Numbers Array is:",greaterThan5Array)

let lessThan5Array = numbers.filter { (num) -> Bool in
    return num < 5
}
//print("Greater Than 5 Numbers Array is:",lessThan5Array)

//MARK:- Filter on Dictionary

let bookAmount = ["Harrypotter": 100.0, "junglebook": 1000.0]

print(bookAmount.filter({ (key, value) -> Bool in
    value > 100
}))


//MARK:- Filter on Set

var bookSet: Set = [300.00, 400.00, 500.00]

let returnFromSet = bookSet.filter { (num) -> Bool in
    num == 300
}
print(returnFromSet)

let returnFromSet1 = bookSet.filter { $0 == 300 }

print(returnFromSet1)

import UIKit

//MARK:- Use reduce to combine all items in a collection to create a single new value.

let numbers = [1,4,6,8,2,3,5,9,0,7]

var result = 0
for num in numbers {
    result = result + num
}
//print(result)

let reduceValue = numbers.reduce(0) { (result, num) -> Int in
    return result + num
}
//print("Reduce Value:",reduceValue)

let reduceValue1 = numbers.reduce(0) { (result, num) in
    return result + num
}
//print("Reduce Value 1:",reduceValue1)

let reduceValue2 = numbers.reduce(0) { (result, num) in
     result + num
}
//print("Reduce Value 2:",reduceValue2)

let reduceValue3 = numbers.reduce(0) { ($0 + $1) }
//print("Reduce Value 3:",reduceValue3)

let reduceValue4 = numbers.reduce(0, { ($0 + $1) } )
//print("Reduce Value 4:",reduceValue4)


//MARK:- Reduce on Dictionary

let codes = ["abc","def","ghi"]
let text = codes.reduce("") { $0 + $1} //the result is "abcdefghi"
let text1 = codes.reduce("",+) //the result is "abcdefghi"
//dump(text)
//dump(text1)

let bookAmount = ["Harrypotter": 100.0, "junglebook": 1000.0]
let reduceAmountOnDict = bookAmount.reduce(0) { (value, toupleOfKeyAndValue) in
//    print(toupleOfKeyAndValue)
//    print(toupleOfKeyAndValue.key)
//    print(toupleOfKeyAndValue.value)
//    print(value)
    return value + Int(toupleOfKeyAndValue.value)
}
print(reduceAmountOnDict)

let reduceBookOnDict = bookAmount.reduce("Books in the Dict Are ") { (value, toupleOfKeyAndValue) in
    return value + toupleOfKeyAndValue.key + ","
}
print(reduceBookOnDict)

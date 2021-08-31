// do something 5 times
//for _ in 1...5{
//    print("hello")
//}

////Set is unordered, array is ordered
//let fruits: Set = ["Apple", "Pear", "Orange"]
//for fruit in fruits {
//    print(fruit)
//}
//
////loop through dictionary
//let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 91234567]
//for person in contacts {
//    print(person.key)
//    print(person.value)
//}
//
//import Foundation
//var now = Date().timeIntervalSince1970
//let oneSecondFromNow = now + 1
//
//// until 1 second passed, how many times it will print
//while now < oneSecondFromNow {
//    now = Date().timeIntervalSince1970
//    print("waiting")
//}

func fibonacci(n: Int){
    var a = 0
    var b = 1
    var result = [Int]()
    
    for _ in 1...n{
        result.append(a)
        let temp = a
        a = b
        b = temp + b
    }
    print(result)
}

fibonacci(n: 3)

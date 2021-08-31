
//pass function, return function
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

//call the pass and return function
calculator(n1: 2, n2: 3, operation: add)
calculator(n1: 2, n2: 3, operation: multiply)


//using closure
calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})

// simplified
calculator(n1: 2, n2: 3) { no1, no2 in
    return no1 * no2
}

//the simplified closure == trailing closure (closure 的尾巴 {}）
let result = calculator(n1: 2, n2: 3) { $0 * $1 } //$0 means first parameter, $1 means second parameter
print(result)



//example to use closure

let array = [6,2,3,9,4,1]
//func addOne (n1: Int) -> Int {
//    return n1 + 1
//}
//array.map(addOne)
print(array.map{$0 + 1})

let newArray = array.map{"\($0)"}
print(newArray)


let myOptional: String? //let it is an optional

myOptional = nil

// method 1: !
// "!" is you are telling xcode that it will never be "nil"
// let text: String = myOptional! //it will have an error if myOpthinal is "nil"

// method 2: if optional != nil
//if myOptional != nil {
//    let text: String = myOptional!
//    let text2: String = myOptional!
//} else {
//    print("myOptional is found to be nil")
//}

// method 3: if let safeOptional = optional, 好处：不用每次都加"!"
//if let safeOptional = myOptional{
//    let text: String = safeOptional
//    let text2: String = safeOptional
//    print(safeOptional)
//} else {
//        print("myOptional is found to be nil")
//    }

// method 4: optional ?? defaultValue
let text: String = myOptional ?? "I am the default value"
print(text)

// method 5: optional?.property optional?.method
struct MyOptional2 {
    var property = 123
    func method(){
        print("I am the struct's method.")
    }
}

let myOptional2: MyOptional2?
myOptional2 = MyOptional2() // try "nil" to see different results
print(myOptional2?.property ?? "default")
myOptional2?.method()

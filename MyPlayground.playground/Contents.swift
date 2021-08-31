//
//// This is a comment
//
//print("hello \(2+3) world.")
//
///* This is a multi
// line comment*/
//
//print("The result of 5 + 3 = \(5+3)")


//var a = "dog"
//var b = "cat"
//var c = a
//a = b
//b = c
//
//print("The new a is \(a)")
//print("The new b is \(b)")

// Array challenge
//var numbers = [45, 73, 195, 53]
//var n = 0
//var newNumber1 = numbers[n] * numbers[n+1]
//var newNumber2 = numbers[n+1] * numbers[n+2]
//var newNumber3 = numbers[n+2] * numbers[n+3]
//var computedNumbers = [newNumber1, newNumber2, newNumber3]

// randomisation challenge
//let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

//let password = alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()!
//remove optional
//https://stackoverflow.com/questions/45770919/remove-optional-from-array-of-characters-swift-3
//print(password ?? "")

//var alpha = alphabet
//alpha.shuffle()
//let password = alpha[0] + alpha[1] + alpha[2] + alpha[3] + alpha[4] + alpha[5]

//print(password)


//fuction
//func greeting(){
//    print("hello")
//}
//
//func greeting2(whoToGreet: String){
//    print("Hello \(whoToGreet)")
//}
//
//greeting2(whoToGreet: "Peter")
//
//var myAge = 12
//myAge = "Three" //Cannot assign value of type 'String' to type 'Int'

//var myAge: String = "Three"

//if else
//func loveCalculator(){
//    let loveScore = Int.random(in: 0...100)
//    print(loveScore)
//    if loveScore > 80 {
//        print("You love each other like Kanye loves Kanye")
//    } else if loveScore > 40 {//loveScore <= 80 && loveScore > 40 {
//        print("You go together like Coke and Mentos")
//    } else {
//        print("You'll be forever alone.")
//    }
//}
//
//loveCalculator()

// switch
func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    switch loveScore {
    case 81...100:
        print("You love each other like Kanye loves Kanye")
    case 41..<81:
        print("You go together like Coke and Mentos")
    case ...40:
        print("You'll be forever alone.")
    default:
        print("Error loveScore is out of range.")

    }
}

loveCalculator()

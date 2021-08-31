protocol CanFly {
    func fly()
}

//extension a protocol
extension CanFly {
    func fly() {
        print("The object takes off into the air.")
    }
}

class Bird {
    
    var isFemale = true
    
    func layegg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
//    func fly() {
//        print("The bird flaps its wings and lifts off into the sky.")
//    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    // find the object that can fly (have the fly() function)
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
//    func fly(){
//        print("The airplane uses its engine to lift off into the air.")
//    }
}

let myPlane = Airplane()
myPlane.fly()

let myEagle = Eagle()
myEagle.fly()
//
let myPenguin = Penguin()
//myPenguin.fly() //penguin inherits fly() from Brid, but it cannot fly.

//let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
//museum.flyingDemo(flyingObject: myPenguin)
museum.flyingDemo(flyingObject: myPlane)

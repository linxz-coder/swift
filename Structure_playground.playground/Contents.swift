//struct Town {
//    let name = "Angelaland"
//    var citizens = ["Angela", "Lin Chen"]
//    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
//
//    func fortify(){
//        print("Defences increased!")
//    }
//}
//
//var myTown = Town()
//print(myTown.citizens)
//print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain.")
//
//myTown.citizens.append("Kyan Lin")
//print(myTown.citizens)
//
//myTown.fortify()

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String:Int]
    
//    init(name: String, citizens: [String], resources: [String:Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
    
    func fortify(){
        print("Defences increased!")
    }
    
    mutating func harvestRice(){
        resources["Rice"] = 100 //actually it is 'self.resources', 'self' is immutable, it automatically add 'let' before is
    }
}

var anotherTown = Town(name: "Beijing", citizens: ["Anne", "Sue"], resources: ["Grain": 300, "Ore": 200])
anotherTown.citizens.append("Tom Hanks") //change property from outside
print(anotherTown.citizens)
anotherTown.harvestRice() //change property from inside
print(anotherTown.resources)

var ghostTown = Town(name: "Ghost", citizens: ["Peter", "Butter"], resources: ["smoke": 100])
print(ghostTown.name)




// exercise
struct User {
       let name: String
       let email: String
       let followers: Int
       var isActive: Bool
       
       init(name: String, email: String, followers: Int, isActive: Bool){
           self.name = name
           self.email = email
           self.followers = followers
           self.isActive = isActive
       }
       
       func logStatus(){
           if isActive == true{
               print("\(self.name) is working hard")
           } else {
               print("\(self.name) has left earth")
           }
       }
   }


   // Initialise a User struct here
var user1 = User(name: "Richard", email: "Richard@qq.com", followers: 0, isActive: true)
user1.logStatus()
print(user1.email)

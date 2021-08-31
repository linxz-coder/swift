
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport? // protocol as a data type
    
    func assessSituation(){
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR() //whoever is delegated should perform CPR
    }
}

struct Paramedic: AdvancedLifeSupport { // protocol as a data type
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self // tell the handler, I am the delegated
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport{

    init(handler: EmergencyCallHandler) {
        handler.delegate = self // tell the handler, I am the delegated
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
//let pete = Paramedic(handler: emilio)

let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()

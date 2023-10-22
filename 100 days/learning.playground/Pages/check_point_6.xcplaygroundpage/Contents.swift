struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear = 0 {
        willSet {
            print("Gear \(currentGear) is now changing to \(newValue)")
        }
    }
    
    mutating func shiftGearUp() {
        if currentGear < 10 {
            currentGear += 1
        } else {
            print("Cannot shift gear up, at highest gear already!")
        }
    }
    
    mutating func shiftGearDown() {
        if currentGear > 0 {
            currentGear -= 1
        } else {
            print("Cannot shift gear down, at neutral gear already!")
        }
    }
}

var audiA4 = Car(model: "Audi A4", numberOfSeats: 4)
audiA4.shiftGearUp()
audiA4.shiftGearUp()
audiA4.shiftGearUp()
audiA4.shiftGearUp()
audiA4.shiftGearUp()
audiA4.shiftGearUp()
audiA4.shiftGearUp()
audiA4.shiftGearUp()
audiA4.shiftGearUp()
audiA4.shiftGearUp()

audiA4.shiftGearUp()
print(audiA4.currentGear)


audiA4.shiftGearDown()
audiA4.shiftGearDown()
audiA4.shiftGearDown()
audiA4.shiftGearDown()
audiA4.shiftGearDown()
audiA4.shiftGearDown()
audiA4.shiftGearDown()
audiA4.shiftGearDown()
audiA4.shiftGearDown()
audiA4.shiftGearDown()

audiA4.shiftGearDown()
print(audiA4.currentGear)

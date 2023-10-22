protocol Building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var agent: String {get set}
    var type: String {get set}
    func printSummary()
}

extension Building {
    func printSummary() {
        print("\(agent) is showing a \(rooms) room \(type) property that costs \(cost).")
        //by adding the print summary to the extension, it avoids having to write separate functions for each struct
    }
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    var type: String = "residential"
}

extension House {
    init(rooms: Int, agent: String) {
        self.rooms = rooms
        self.cost = rooms * 50_000
        self.agent = agent
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    var type: String = "commercial"
}

let house = House(rooms: 4, cost: 1_250_000, agent: "Sue Casa")
house.printSummary()

let house2 = House(rooms: 4, agent: "Sue Casa")
house2.printSummary()

let office = Office(rooms: 12, cost: 12_000_000, agent: "Moe Dollas")
office.printSummary()

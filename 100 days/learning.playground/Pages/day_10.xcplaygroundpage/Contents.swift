// Structs

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
print(red.title)

red.printSummary()

struct Employee {
    let name: String
    var vacationRemaining = 14

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("\(name): I'm going on vacation for \(days) days!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("\(name): Oops! There aren't enough days remaining.")
        }
    }
}

var sai = Employee(name: "Sai Ram", vacationRemaining: 30)
sai.takeVacation(days: 18)

sai.vacationRemaining -= 5
print(sai.vacationRemaining)
sai.vacationRemaining -= 3
print(sai.vacationRemaining)

// With default vacation days for Lana
var kane = Employee(name: "Lana Kane")
kane.takeVacation(days: 15)

var poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)
poovey.takeVacation(days: 22)

//Dynamically compute property values
struct EmployeeNew {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = EmployeeNew(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)

// Take acton when a prop changes

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

// Custom initializers with init method, all values must be assigned a value in "init"
struct Player {
    let name: String
    let number: Int

    init(nameParam: String) {
        self.name = nameParam
        number = Int.random(in: 1...99)
    }
}

let player = Player(nameParam: "Megan R")
print(player.number, player.name)

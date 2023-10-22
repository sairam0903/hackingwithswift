func greetUser() {
    print("Hi there!")
}

greetUser()
// Copy functions
var greetCopy = greetUser
greetCopy()


// Create closures by assigning to a const or var
let sayHello = {
    print("Hi there!")
}
sayHello()

let sayHi = {(name: String) -> String in
    "Hi \(name)"
}
sayHi("Sai Ram")

// Custom sort with closure
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}


let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// Custom sort with inline closure
let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
print(captainFirstTeam1)

// Trailing closure With less clutter by removing braces
let captainFirstTeam2 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

// even less clutter with shorthand variables $0, $1, .....
let captainFirstTeam3 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

// Shorter version of closure
let reverseTeam = team.sorted {
    return $0 > $1
}

// we remove return when only single line
let reverseTeam1 = team.sorted { $0 > $1 }


// Custom filter
let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

let upperCase = team.map { $0.uppercased() }
print(upperCase)


// Functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 1..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 6) {
    Int.random(in: 1...20)
}
print(rolls)

func generateRandom() -> Int {
    Int.random(in: 1...20)
}
let newRolls = makeArray(size: 4, using: generateRandom)
print(newRolls)

// Pass multiple functions as parameters
func doImpWork(first: (_ param: String) -> Void, second: (_ secondParam: Int) -> Void, third: () -> Void) {
    print("About to start first work")
    first("firstParam")
    print("About to start first work")
    second(25)
    print("About to start first work")
    third()
    print("Done!")
}

// If a function's final parameters are functions, use trailing closure syntax
doImpWork { firstParam in
    print("This is first work with \(firstParam)")
} second: {
    print("This is second work with second param: \($0)")
} third: {
    print("This is third work")
}

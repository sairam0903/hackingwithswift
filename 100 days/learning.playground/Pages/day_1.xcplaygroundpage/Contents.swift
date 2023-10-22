import Cocoa

var greeting = "Hello, playground"

let char = "John"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)
print(playerName.uppercased())

let managerName = "Micheal Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)
print(movie.count)
print(movie.hasSuffix("engineer"))

let score = 1_00_00___00
print(score)

var counter  = 10
counter = counter + 5
counter += 5
print(counter)
print(counter.isMultiple(of: 5))

let number = 0.1 + 0.2
print(number)

let a = 1
let b = 0.9
let c = a + Int(b)
let d = Double(a) + b
print(c, d)

var name = "print"
// Not allowed to assign diferent data type
// name = 45

var rating = 5.0
rating *= 2
print(rating)

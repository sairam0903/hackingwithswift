import Cocoa

// String interpolation
let isGood = true

var gameOVer = false
print(gameOVer)
gameOVer.toggle()
print(gameOVer)

let isMultiple = 120.isMultiple(of: 3)
print(isMultiple)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

// Addind different data types
let number = 20
let missionMessage = "Apollo " + String(number) + " landed on the moon."
print(missionMessage)

// Better way of adding different data types
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

print("5 x 5 is \(5 * 5)")

// Checkpoint 1

let celsius = 45.4
let fahrenheit = (celsius * 9/5) + 32
print("\(celsius)°C is \(fahrenheit)°F")

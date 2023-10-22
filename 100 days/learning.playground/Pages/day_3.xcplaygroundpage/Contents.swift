import Cocoa

// Arrays
var beatles = ["John", "Paul", "George"]
beatles.append("Sai")
beatles.append("Ram")
print(beatles)

let numbers = [1 ,3, 5]
let decimals = [1.1, 2.3, 3.4, 5]

// let notAllowed = numbers[0] + beatles[0]

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
scores.append(1)
print(scores[1])

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

// alternative way of creating array of strings
var songs = [String]()
songs.append("Folklore")
songs.append("Fearless")
songs.append("Red")
print("Total Songs: \(songs.count)")

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters, characters.count)

characters.remove(at: 2)
print(characters, characters.count)

characters.removeAll()
print(characters, characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// Dictionaries

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
print(heights)

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
print(archEnemies)

archEnemies["Batman"] = "Penguin"
print(archEnemies)
print(archEnemies.count)
archEnemies.removeAll()
print(archEnemies)

// Sets

var people = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson",
    "Nicolas Cage"
])
print(people)

people.insert("Sai Ram")
print(people)

// Enums

var selected = "Monday"
selected = "Tuesday"
selected = "Janunary"
selected = "Friday "

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

day = .thursday
print(day)


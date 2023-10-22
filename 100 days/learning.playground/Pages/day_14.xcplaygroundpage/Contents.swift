import Cocoa

// Optionals
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
}

// shorthand of temp variable number
if let number {
    print(square(number: number))
}


func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}

var weatherForecast: String? = "sunny"
if let forecast = weatherForecast {
    print("The forecast is \(forecast).")
} else {
    print("No forecast available.")
}

// This attempts to use menuItems inside the if let, when really it should use items.
//let menuItems: [String]? = ["Pizza", "Pasta"]
//if let items = menuItems {
//    print("There are \(menuItems.count) items to choose from.")
//}

let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}

// 2nd way to unwrap optionals
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

func getMeaningOfLife() -> Int? {
    42
}

// Using if let
func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

// using guard let, we must always return
func printMeaningOfLife1() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
}

// 3rd way to unwrap optionals
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
// let new = captains["Serenity", default: 'N/A']

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number1 = Int(input) ?? 10
print(number1)

// Optional chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Books {
    let title: String
    let author: String?
}

var books: Books? = nil
let authors = books?.author?.first?.uppercased() ?? "AAA"
print(authors)

// functional failure with options
enum UserError: Error {
    case badID, networkFailed
}

// Using try? converts a function's return value into an optional
func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous 2nd time"
print(user)

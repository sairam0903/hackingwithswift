// Type annotations
let surname: String = "Lasso"
var score: Int = 0
var Score: Double = 0
var Albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws", "a": "b"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])


// samething but created in different ways
var teams: [String] = [String]()
var Cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark
print(style)

// Checkpoint 2
let arrayOfStrings = ["sai", "ram", "gupta", "chittimilla", "sai", "sri"]
print(arrayOfStrings.count)
let uniqueArray = Set(arrayOfStrings)
print(uniqueArray.count)




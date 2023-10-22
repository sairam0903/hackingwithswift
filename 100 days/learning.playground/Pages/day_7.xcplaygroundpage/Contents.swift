func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)


func containsSameLetters(str1: String, str2: String) -> Bool {
    return str1.sorted() == str2.sorted()
}

// Same, one liner can omit return keyword
func containsSameLetters1(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted()
}

let isSame = containsSameLetters(str1: "hello", str2: "elloh")
print(isSame)

// return values using tuples
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Sai Ram Gupta", lastName: "Chittimilla")
}

// alternative to tuples - unnamed
func getUser1() -> (String, String) {
    ("Sai Ram Gupta", "Chittimilla")
}

let user = getUser()
let user1 = getUser1()

// Destructuring vars
let (first, last) = getUser1()
let (firstName, lastName) = getUser1()

print("\(user.firstName), \(user.lastName)")
print("\(user1.0), \(user1.1)")
print(first, last)
print(firstName, lastName)


// If we add an underscore before the parameter name, we can remove the external parameter label like so:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

// for is an external var and number is internal variable
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

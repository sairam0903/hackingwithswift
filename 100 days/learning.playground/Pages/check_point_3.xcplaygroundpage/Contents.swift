
for i in 1...100 {
    if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else {
        print(i)
    }
}

// Cleaner solution

for i in 1...1000 {
    var text = ""
    
    if i.isMultiple(of: 3) {
        text += "Fizz"
    }
    
    if i.isMultiple(of: 5) {
        text += "Buzz"
    }
    
    print(text.isEmpty ? i : text)
}

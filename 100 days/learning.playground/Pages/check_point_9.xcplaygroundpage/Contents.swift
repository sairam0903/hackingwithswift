import Cocoa

func getRandomInteger(from integers: [Int]?) -> Int {
    integers?.randomElement() ?? Int.random(in: 1...100)
}

let integers = [1, 2, 3, 4, 5]
print(getRandomInteger(from: integers))

let nilInters: [Int]? = nil
print(getRandomInteger(from: nilInters))

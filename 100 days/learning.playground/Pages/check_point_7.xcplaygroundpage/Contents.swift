class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    
    func speak() {
        print("Bow Bow")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi says bow bow and have \(self.legs) legs")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle says bow bow and have \(self.legs) legs")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak() {
        print("Meow Meow")
    }
}

class Persian: Cat {
    override func speak() {
        print("Persian says Meow Meow and have \(self.legs) legs and is tame: \(self.isTame)")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion says Meow Meow and have \(self.legs) legs and is tame: \(self.isTame)")
    }
}

let dog = Dog()
dog.speak()

let newCorgi = Corgi()
newCorgi.speak()

let newPoodle = Poodle()
newCorgi.speak()

let cat = Cat(isTame: true)
cat.speak()

let persian = Persian(isTame: false)
persian.speak()

let lion = Lion(isTame: true)
lion.speak()

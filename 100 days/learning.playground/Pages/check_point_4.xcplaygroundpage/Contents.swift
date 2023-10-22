enum OutOfBoundError: Error {
    case lessThanOne, greaterThan10K, squareRootNotFound
}

func findSquareRoot(of number: Int) throws -> Int {
    if number < 1  {
        throw OutOfBoundError.lessThanOne
    }
    if number > 10_000 {
        throw OutOfBoundError.greaterThan10K
    }
    
    var squareRoot = 0
    
    for i in 1...100 {
        squareRoot = i * i
        
        if number == squareRoot {
            return i
        }
    }
    
    throw OutOfBoundError.squareRootNotFound
}

let number = 121

do {
    let squareRoot = try findSquareRoot(of: number)
    print(squareRoot)
} catch OutOfBoundError.lessThanOne {
    print("Less than 1 not allowed, given number: \(number)")
} catch OutOfBoundError.greaterThan10K {
    print("Greater than 10,000 not allowed, given number: \(number)")
}  catch OutOfBoundError.squareRootNotFound {
    print("Unable to get square root of \(number)")
} catch {
    print("Got generic error!!!")
}

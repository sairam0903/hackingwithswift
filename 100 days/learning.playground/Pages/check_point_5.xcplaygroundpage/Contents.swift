// My solution using function
func doDataMassage(_ numbers: [Int]) {
    numbers.filter {
        !$0.isMultiple(of: 2)
    }.sorted {
        $0 < $1
    }.map {
        print("\($0) is a lucky number.")
    }
}
doDataMassage([7, 4, 38, 21, 16, 15, 12, 33, 31, 49])
doDataMassage([1, 21, 3, 5, 6, 87])
print()

// Online solution using closure
let solve = { (numbers: [Int]) in
    numbers.filter { !$0.isMultiple(of: 2) }
    .sorted()
    .map { print("\($0) is a lucky number.") }
}
solve([7, 4, 38, 21, 16, 15, 12, 33, 31, 49])
solve([1, 21, 3, 5, 6, 87])
print()

// Another solution
let _ = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
    .filter { !$0.isMultiple(of: 2) }   // filter out even numbers
    .sorted()                           // sort the odd numbers
    .map { print("\($0) is a lucky number.") } // map to strings

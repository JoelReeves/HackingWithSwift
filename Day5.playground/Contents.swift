import UIKit

// Functions
func printHelloWorld() {
    print("Hello World")
}
printHelloWorld()


func printName(name: String) {
    print("Hello, \(name)")
}
printName(name: "Joel. How are you?")


func square(number: Int) -> Int {
    return number * number
}
let originalNumber = 4
let numberSquared = square(number: originalNumber)
print("\(originalNumber) squared is \(numberSquared)")


func calculateWages(wage: Int, isOvertime: Bool = false) -> Int {
    var pay = 10000 * wage
    if isOvertime {
        pay *= 2
    }
    return pay
}
let noOvertime = calculateWages(wage: 1000)
let overtime = calculateWages(wage: 1000, isOvertime: true)
print("I got no overtime, so my wages was $\(noOvertime)")
print("I got overtime, so my wages was $\(overtime)")



// Variadic functions - accepts any number parameters of the same type
func square(numbers: Int...) {
    for number in numbers {
        let squared = number * number
        print("\(number) squared is \(squared)")
    }
}
square() // nothing will print
square(numbers: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)



// Throwing functions
enum NameValidation: Error {
    case emptyName
    case nameToShort
}

func checkName(name: String) throws {
    if name.isEmpty {
        throw NameValidation.emptyName
    }
    
    if name.count < 2 {
        throw NameValidation.nameToShort
    }
    
    print("Hello, \(name)")
}
try checkName(name: "Joe") // a method that throws must start with the try keyword

// handling errors in a do/catch
do {
    try checkName(name: "")
} catch {
    print("error: \(error)")
}



// inout parameters
// All parameters passed into a Swift function are constants, so you can’t change them.
// If you want, you can pass in one or more parameters as inout, which means they can be
// changed inside your function, and those changes reflect in the original value outside the function.
func doubleInPlace(number: inout Int) {
    number *= 2
}
var num = 6
print("original number: \(num)")
doubleInPlace(number: &num)
print("changed number: \(num)")

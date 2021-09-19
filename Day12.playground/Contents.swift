import UIKit

// Unwrapping Optionals - if let
var name: String? = nil
name = "Joel"

if let unwrappedName = name {
    print("\(unwrappedName) has \(unwrappedName.count) letters")
} else {
    print("Missing name")
}


/*
 Unwrapping Optionals - guard
 
 An alternative to if let is guard let, which also unwraps optionals.
 
 guard let will unwrap an optional for you, but if it finds nil inside it expects
 you to exit the function, loop, or condition you used it in.
 
 However, the major difference between if let and guard let is that your unwrapped optional
 remains usable after the guard code.
 */

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

greet(nil)


func doubleNumber(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}

let input = 15
if let doubled = doubleNumber(number: input) {
    print("\(input) doubled is \(doubled).")
}



// Force unwrapping
let str = "5"
let num = Int(str)!
print(num)


func title(for page: Int) -> String? {
    guard page >= 1 else {
        return nil
    }
    let pageCount = 132
    if page < pageCount {
        return "Page \(page)"
    } else {
        return nil
    }
}

let pageTitle = title(for: 16)



// Nil coalescing operator - attempts to unwrap an optional, but provides a default value if the optional contains nil

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 16) ?? "Anonymous"
print("User name is \(user)")

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0
//let crusherScore = scores["Crusher", default: 0] or can use this with dictionaries



// Optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()
print(beatle)
// if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.

let racers = ["Hamilton", "Verstappen", "Vettel"]
let winnerWasVE = racers.first?.hasPrefix("Ve")



// Optional Try - changes throwing functions into functions that return an optional.
// If the function throws an error you’ll be sent nil as the result,
// otherwise you’ll get the return value wrapped as an optional
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}



// Failable initializers - used in structs and classes by using init?() and returns nil if something goes wrong
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let person = Person(id: "123456789")
if let p = person {
    print("person id is \(p.id)")
} else {
    print("person does not have a valid id")
}


class Hotel {
    var starRating: Int
    init?(rating: Int) {
        if rating <= 1 {
            print("This probably has bed bugs.")
            return nil
        }
        self.starRating = rating
    }
}
let hotelElan = Hotel(rating: 1)



// Typecasting - Type casting lets us tell Swift that an object it thinks is type A is actually type B,
// which is helpful when working with protocols and class inheritance
class Human {
    var name = "Anonymous"
}

class Customer: Human {
    var id = 12345
}

class Employee: Human {
    var salary = 50_000
}

let customer = Customer()
let employee = Employee()
let human = [customer, employee]

// Because both Customer and Employee inherit from Person, Swift will consider that people constant
// to be a Person array. So, if we loop over people we’ll only be able to access the name of each item
// in the array – or at least we would only be able to do that, if it weren’t for type casting

for person in human {
    if let customer = person as? Customer {
        print("I'm a customer, with id \(customer.id)")
    } else if let employee = person as? Employee {
        print("I'm an employee, earning $\(employee.salary)")
    }
}

import UIKit

// Protocols
protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

let book = Book(name: "Lord of the Rings", author: "J.R.R. Toklien")
buy(book)



// Protocol Inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

class GoogleEmployee : Employee {
    func calculateWages() -> Int {
        return 200000
    }
    
    func study() {
        print("I am studying!")
    }
    
    func takeVacation(days: Int) {
        print("I am taking \(days) vacation days this year")
    }
}

let employee = GoogleEmployee()
print("I am making \(employee.calculateWages()) per year")
employee.study()
employee.takeVacation(days: 20)



// Extensions - allow you to add methods to existing types, to make them do things they weren’t originally designed to do
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let squaredNumber = 10
print("\(squaredNumber) squared is \(squaredNumber.squared())")


extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let evenNumber = 50
let oddNumber = 13
print("\(evenNumber) is even: \(evenNumber.isEven)")
print("\(oddNumber) is even: \(oddNumber.isEven)")

extension String {
    func isUppercased() -> Bool {
        return self == self.uppercased()
    }
}

let name = "JOEL"
print("\(name) is uppercased: \(name.isUppercased())")



/* Protocol Extensions - are like regular extensions, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.
*/
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

// Swift’s arrays and sets both conform to a protocol called Collection,
// so we can write an extension to that protocol to add a summarize() method to print the collection neatly
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()


protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable { // gets default implemetation of identify automatically
    var id: String
}

let user = User(id: "joelreeves")
user.identify()

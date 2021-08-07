import UIKit

// Initializers

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User() // no need for initializing with username because of init block
user.username = "joel"


struct Cabinet {
    var height: Double
    var width: Double
    var area: Double
    init (itemHeight: Double, itemWidth: Double) {
        height = itemHeight
        width = itemWidth
        area = height * width
    }
}
let drawers = Cabinet(itemHeight: 2.0, itemWidth: 1.5)


// Lazy properties - properties that are only created when they are needed/accessed
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var joel = Person(name: "Joel")
joel.familyTree // will only initialize and print message here due to lazy keyword



// Static properties - properties that are shared across all instances of the struct
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let student1 = Student(name: "Joel")
let student2 = Student(name: "Jeanette")
print("Student class size: \(Student.classSize)")



// Access control
struct Human {
    private var id: String // Now only methods inside Human can read the id property

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

var babe = Human(id: "123456")
print(babe.identify()) // can't call babe.id directly because of private keyword

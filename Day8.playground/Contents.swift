import UIKit

// Structs
struct Movie {
    var name: String
    var hasWatched: Bool
    
    var watchedStatus: String { // computed property. can't be a constant
        if hasWatched {
            return "I have already seen \(name)"
        } else {
            return "I have not seen \(name)"
        }
    }
}

var lotr = Movie(name: "Lord of the Rings", hasWatched: true)
print("I'm about to watch \(lotr.name) even though \(lotr.watchedStatus)")

var starWars = Movie(name: "Star Wars", hasWatched: false)
print("I'm about to watch \(starWars.name). \(starWars.watchedStatus)")


// Property observers: lets you run code before or after any property changes
// The didSet property observer will do this for us
// You can also use willSet to take action before a property changes
// In this examplewe have a struct and are adjusting its progress over time
// and are printing a message every time amount changes
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
let percentages = [20, 40, 60, 80, 100]

for percent in percentages {
    progress.amount = percent
}


// Methods - functions inside structs
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let philadelphia = City(population: 25_000_000)
print("The city's population is \(philadelphia.population) with collected taxes of \(philadelphia.collectTaxes()) dollars")


/* Mutating Methods
 If a struct has a variable property but the instance of the struct was created as a constant,
 that property can’t be changed – the struct is constant, so all its properties are also
 constant regardless of how they were created.

 The problem is that when you create the struct Swift has no idea whether you will use it with
 constants or variables, so by default it takes the safe approach: Swift won’t let you write
 methods that change properties unless you specifically request it.

 When you want to change a property inside a method, you need to mark it using the mutating keyword
 */
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

// Because it changes the property, Swift will only allow that method to
// be called on Person instances that are variables (not constants)
var person = Person(name: "Ed")
person.makeAnonymous()



// Properties and methods of strings
let string = "Do or do not, there is no try."
print("This string has \(string.count) characters")
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


// Properties and methods of arrays
var movies = ["Lord of the Rings", "Star Wars", "Wizard of Oz", "National Lampoon's Christmas Vacation"]
print(movies.count)
movies.append("Hancock")
movies.firstIndex(of: "Star Wars")
print(movies.sorted())
movies.remove(at: 2)
print(movies)

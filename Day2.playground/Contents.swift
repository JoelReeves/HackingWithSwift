import UIKit


// 3/15/21

// Arrays
var family = ["Joel", "Jeanette", "Joshua", "Ronnie", "Jacob", "Roxy"]
print("We have \(family.count) people living in the house")
family.remove(at: 2)
family.remove(at: 2)
family.remove(at: 2)
print("Kids have all moved out. We now just have have \(family.count) people living in the house: \(family)")

let daysOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
print("The second day of the week is \(daysOfWeek[1])")
print("There are \(daysOfWeek.count) days in the week")

var movies = ["Lord of the Rings", "Batman Begins", "The Incredibles"]
print("I have seen \(movies.count) movies")
movies.append("Forrest Gump")
print("I have now seen \(movies.count) movies")


// Sets
let fruit: Set = ["apple", "banana", "strawberry", "orange", "mango", "peach"]

let alphabet = Set(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])
print("There are \(alphabet.count) letters in the alphabet")
print("The alphabet has the letter a: \(alphabet.contains("a"))")


// Tuples
let joel = (name: "Joel", age: 40)
let jeanette = (name: "Jeanette", age: 41)
let ronnie = (name: "Ronnie", age: 14)
let joshua = (name: "Joshua", age: 13)
let jacob = (name: "Jacob", age: 9)

print("Joel is \(joel.age) years old")

let address = (number: 1102, street: "Corbridge Ct", city: "Voorhees", state: "NJ", zip: "08043")
print("My address is \(address.number) \(address.street) \(address.city), \(address.state) \(address.zip)")


// Dictionaries
let salaries = ["Joel": 5000000, "Jeanette": 10000000, "Mr. Beast": 50000000]
salaries["Joel"]
salaries["Jeanette"]
salaries["Mr. Beast"]
salaries["Testing"]

let familyDictionary: [String:Int] = ["Joel": 40, "Jeanette": 41, "Ronnie": 14, "Josh": 13, "Jacob": 9]
familyDictionary["Jeanette"]
familyDictionary["Foo", default: 0] // Setting a default value instead of returning nil when a key is not found
familyDictionary["Bar"] ?? 10 // alternate way of setting a default value


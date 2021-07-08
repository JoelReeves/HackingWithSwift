import UIKit

// 3/19/21

// Arithmetic operators
let testScore1 = 90
let testScore2 = 85

let total = testScore1 | testScore2
let difference = testScore1 - testScore2
let product = testScore1 * testScore2
let divided = testScore1 / testScore2
let remainder = 90 % 8

let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")

let oneHundred = 100
let isOneHundredMultiple = oneHundred.isMultiple(of: 10)
let isNotOneHundredMultiple = oneHundred.isMultiple(of: 13)

let five = 5
var anotherFive = 5
anotherFive.negate()
print("The opposite of \(five) is \(anotherFive)")


// Operator overloading: allows the same operator – +, *, /, and so on to do different things depending on what data you use it with
let meaningOfLife = 42
let doubleMeaning = meaningOfLife + 42

let love = "I love "
let myBabe = love + "Jeanette Reeves! xoxo"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


// Compound assignment operators
var score = 95
score -= 5
score *= 100
score /= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


// Comparison operators
let firstName = "Joel"
let secondName = "Jeanette"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

"Taylor" <= "Swift"
"Jeanette" <= "Joel"

let currentDate = Date()
var previousDate = Calendar.current.date(byAdding: .day, value: -5, to: currentDate)
print(currentDate == previousDate)

enum Sizes: Comparable { // making enums comparable
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second) // prints true because "small" comes before "large" in the enum case list


// Conditions
let age = Int.random(in: 1...100)
if age >= 18 {
    print("You are \(age) years old, an adult!")
} else {
    print("You are a minor. You have \(18-age) years until you are an adult")
}


// Ternary operator
let firstCard = "ace of spades"
let secondCard = "ace of hearts"
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")



// Switch statements
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    // Note: can also use the fallthrough keyword to run the next case
    //fallthrough
default:
    print("Enjoy your day!")
}



// Range operators
// The half-open range operator, ..<, creates ranges up to but excluding the final value
// The closed range operator, ..., creates ranges up to and including the final value
let testScore = 95

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[0]) // getting individual value
print(names[0...2]) // getting range of values
print(names[0...]) // using a one-sided range to get from the specified index to the end of the array

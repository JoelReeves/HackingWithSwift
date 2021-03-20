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


import UIKit

// For loops
let numbers = 1...10

for number in numbers {
    print("The number is \(number)")
}

// If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values
for _ in 1...5 {
    print("love")
}


// While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")



// Repeat loops
var years = 10

repeat {
    print("The number is \(years)")
    years -= 1
} while years >= 1



// Exiting loops
let scores = [1, 8, 4, 3, 0, 5, 2]
let shuffledScores = scores.shuffled()
print("shuffled scores is \(shuffledScores)")
var count = 0

for score in shuffledScores {
    if score == 0 {
        break
    }

    count += 1
}

print("You had \(count) scores before you got 0.")



// Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
    let value = fibonacci[position]
    position += 1
    if value < 2 {
       continue
    }
    print("Fibonacci number \(position) is \(value)")
}



// Infinite loops
var counter = 0

while true {
    counter += 1
    print("the counter is at \(counter)")

    if counter == 10 {
        break
    }
}

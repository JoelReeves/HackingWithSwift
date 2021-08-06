import UIKit

// Closures as parameters when they accept parameters

// Function that accepts a closure as its only parameter, and that closure in turn accepts a string
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

// Now when we call travel() using trailing closure syntax, our closure code is required to accept a string
travel { (place: String) in
    print("I'm going to \(place) in my car")
}


// Using closures as parameters when they return values

// travel() function that accepts a closure as its only parameter,
// and that closure in turn accepts a string and returns a string
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// Now when we call travel() using trailing closure syntax, our closure code
// is required to accept a string and return a string
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// Shorthand parameter names

//Swift knows the parameter to that closure must be a string, so we can remove it
travel { place -> String in
    return "I'm going to \(place) in my car"
}

// It also knows the closure must return a string, so we can remove that:
travel { place in
    return "I'm going to \(place) in my car"
}


// As the closure only has one line of code that must be the one that returns the value,
// so Swift lets us remove the return keyword too:
travel { place in
    "I'm going to \(place) in my car"
}

// Swift has a shorthand syntax that lets you go even shorter. Rather than writing place
// in we can let Swift provide automatic names for the closure’s parameters. These are
// named with a dollar sign, then a number counting from 0.
travel {
    "I'm going to \($0) in my car"
}


// Returning closures from functions

/*
 In the same way that you can pass a closure to a function, you can get closures returned from a function too.

 The syntax for this is a bit confusing a first, because it uses -> twice: once to specify your function’s
 return value, and a second time to specify your closure’s return value.

 To try this out, we’re going to write a travel() function that accepts no parameters, but returns a closure.
 The closure that gets returned must be called with a string, and will return nothing.

 */

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")


// Function that returns a closure that, when called, will generate a random number from 1 through 100:

func makeRandomGenerator() -> () -> Int {
    let function = { Int.random(in: 1...100) }
    return function
}

let generator = makeRandomGenerator()
let randomNumber = generator()
print("The random number generated is \(randomNumber)")


import UIKit

// Closures
// Swift lets us use functions just like any other type such as strings and integers.
// This means you can create a function and assign it to a variable, call that function
// using that variable, and even pass that function into other functions as parameters.

// Functions used in this way are called closures, and although they work like functions
// they are written a little differently.

let favoriteMovie = {
    print("Joel's favorite movie is Lord of the Rings")
}
favoriteMovie()


// Closure parameters

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving("the store")

let payUser = { (name: String, payment: Int) in
    print("\(name) just got paid \(payment) dollars")
}
payUser("Joel", 10000000)

var pickFruit = { (name: String) in
    switch name {
    case "strawberry":
        fallthrough
    case "raspberry":
        print("Strawberries and raspberries are half price!")
    default:
        print("We don't have those.")
    }
}

pickFruit("strawberry")



// Returning value from a closure

let movieStar = { (name: String) -> String in
    return "\(name) is a movie star!"
}
let johnWick = movieStar("Keanu Reeves")
print(johnWick)



// Closures as parameters

let destination = {
    print("I'm travelling to Hawaii!")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: destination)


var playGame = {
    print("Let's play Monopoly!")
}

func play(game: () -> Void) -> String {
    print("Let's play a game")
    game()
    return ""
}
play(game: playGame)



// Trailing closure syntax

// original method
func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

// simplified version without trailing closure
animate(duration: 3, animations: {
    print("Fade out the image")
})

// Trailing closures allow us to clean uo the closing braces }), while also removing the animations parameter label.
// That same function call becomes this:
animate(duration: 3) {
    print("Fade out the image")
}


func tendGarden(activities: () -> Void) {
    print("I love gardening")
    activities()
}
tendGarden {
    print("Let's grow some roses!")
}


func makeCake(instructions: () -> Void) {
    print("Wash hands")
    print("Collect ingredients")
    instructions()
    print("Here's your cake!")
}
makeCake {
    print("Mix egg and flour")
}


func goOnVacation(to destination: String, _ activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}
goOnVacation(to: "Mexico") {
    print("Go sightseeing")
    print("Relax in sun")
    print("Go hiking")
}



import UIKit

// Classes

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let myDog = Dog(name: "Roxy", breed: "Poodle Bischon Mix")


// Inheritance
class Poodle: Dog {
    init(name: String) {
            super.init(name: name, breed: "Poodle")
        }
}

let myPoodle = Poodle(name: "Francis")



// Method overriding
class Animal {
    func talk() {
        print("I an an animal!")
    }
}

class Wolf: Animal {
    
    override func talk() {
        print("I am a wolf!")
    }
}

let animal = Animal()
animal.talk()

let wolf = Wolf()
wolf.talk()


// Final classes cannot be subclassed
final class Vehicle { }

// class Toyota : Vehicle { } not allowed



/*
 Copying objects
 
 The third difference between classes and structs is how they are copied. When you copy a struct,
 both the original and the copy are different things – changing one won’t change the other.
 
 When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.
 */

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

// Because of the way classes work, both singer and singerCopy point to the same object in memory,
// so when we print the singer name again we’ll see “Justin Bieber
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)


struct SingerStruct {
    var name = "Jeanette Reeves"
}

var babe = SingerStruct()
print(babe.name)

var babeCopy = babe
babeCopy.name = "Jeanette"
print(babeCopy.name)



// Deinitailizers - code that gets run when an instance of a class is destroyed

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }
    
    deinit {
        print("\(name) is no more!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}



/*
 Mutability
 
 The final difference between classes and structs is the way they deal with constants.
 If you have a constant struct with a variable property, that property can’t be changed
 because the struct itself is constant.

 However, if you have a constant class with a variable property, that property can be changed.
 Because of this, classes don’t need the mutating keyword with methods that change properties;
 that’s only needed with structs.

 This difference means you can change any variable property on a class even when the class is created as a constant
 
 One of the small but important differences between structs and classes is the way they handle mutability of properties:
 - Variable classes can have variable properties changed
 - Constant classes can have variable properties changed
 - Variable structs can have variable properties changed
 - Constant structs cannot have variable properties changed
 */


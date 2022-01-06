//: A UIKit based Playground for presenting user interface
  
import UIKit

class Person {
    
    var name = ""
    
    func clone() -> Person {
        let person = Person()
        person.name = name
        return person
    }
}

var person1 = Person()
person1.name = "Jim"

print(person1.name)

var person2 = person1.clone()
person2.name = "Jack"

print(person1.name)

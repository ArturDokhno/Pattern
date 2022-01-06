//: A UIKit based Playground for presenting user interface
  
import UIKit

class Person {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func clone() -> Person {
        return Person(name: self.name)
    }
}

var person1 = Person(name: "Jim")

var person2 = person1.clone()

print(person1 === person2)

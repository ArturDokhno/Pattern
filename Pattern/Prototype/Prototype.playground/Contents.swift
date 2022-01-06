//: A UIKit based Playground for presenting user interface
  
import UIKit

public protocol Copying {
    init(_ prototype: Self)
}

extension Copying {
    public func copying() -> Self {
        return type(of: self).init(self)
    }
}

class Person: Copying {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    required convenience init(_ prototype: Person) {
        self.init(name: prototype.name)
    }
    
}

var person1 = Person(name: "Jim")

var person2 = person1.copying()

print(person1 === person2)

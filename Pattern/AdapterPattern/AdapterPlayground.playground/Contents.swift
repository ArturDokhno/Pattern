
protocol BirdProtocol {
    func sing()
    func fly()
}

class Bird: BirdProtocol {
    
    func sing() {
        print("Sing")
    }
    
    func fly() {
        print("Fly")
    }
    
}

class Raven {
    
    func flySearchAndDestroy() {
        print("I'm fly")
    }
    
    func voice() {
        print("kar-kar")
    }
}

class RavenAdapter: BirdProtocol {
    
    private var raven: Raven
    
    init(adapter: Raven) {
        raven = adapter
    }
    
    func sing() {
        raven.voice()
    }
    
    func fly() {
        raven.flySearchAndDestroy()
    }

}

func makeTheBirdTest(bird: BirdProtocol) {
    bird.fly()
    bird.sing()
}

let simpleBird = Bird()
let simpleRaven = Raven()
let ravenAdapter = RavenAdapter(adapter: simpleRaven)

makeTheBirdTest(bird: simpleBird)
makeTheBirdTest(bird: ravenAdapter)

// 1-1 1-2 1-3.
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    static func getPrice(for gasoline: Gasoline) -> Double {
        switch gasoline {
        case .oil92:
            return 26.6
        case .oil95:
            return 28.1
        case .oil98:
            return 30.1
        case .diesel:
            return 24.4
        }
    }
}

let price95 = Gasoline.getPrice(for: .oil95)
Gasoline.oil92.rawValue

// 1-4.
// associate value：附加額外的資訊在enum的case上。
enum Gasoline2 {
    case oil92(price: Double)
    case oil95(price: Double)
    case oil98(price: Double)
    case diesel(price: Double)
}
let oil95 = Gasoline2.oil95(price: 28.1)
let price: Double
switch oil95 {
case let .oil92(p):
    price = p
case let .oil95(p):
    price = p
case let .oil98(p):
    price = p
case let .diesel(p):
    price = p
}

// 2-1.
class Pet {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
    
    init(pet: Pet?) {
        self.pet = pet
    }
}

// 2-2.
let person1 = People(pet: nil)
let person2 = People(pet: Pet(name: "Lucky"))

func getPet(person: People) {
    guard let pet = person.pet else {
        print("No pet.")
        return
    }
    print("Pet name is \(pet.name).")
}
getPet(person: person1)
getPet(person: person2)

// 2-3.
if let pet = person1.pet {
    print("Pet name is \(pet.name).")
} else {
    print("Nor pet.")
}

if let pet = person2.pet {
    print("Pet name is \(pet.name).")
} else {
    print("Nor pet.")
}

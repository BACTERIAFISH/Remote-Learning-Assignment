// 1. 4.
struct Person {
    let name: String
    var toolMan: ToolMan
}

protocol PoliceMan {
    func arrestCriminals()
}

// 2.
extension Person: PoliceMan {
    func arrestCriminals() {
        print("Arrest Criminals!")
    }
}

// 3.
protocol ToolMan {
    func fixComputer()
}

// 5.
struct Engineer: ToolMan {
    func fixComputer() {
        print("Fix Computer!")
    }
}

// 6.
let steven = Person(name: "Steven", toolMan: Engineer())
steven.arrestCriminals()
steven.toolMan.fixComputer()

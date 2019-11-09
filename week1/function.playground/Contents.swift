// 1.
func greet(person name: String) -> String {
    return "Hello, \(name)"
}
greet(person: "Sonic")

// 2.
func multiply(a: Int, b: Int = 10) {
    print(a * b)
}
multiply(a: 2)
multiply(a: 3, b: 4)

// 3.
// argument label 是使用function時，要填入的參數名；parameter label 是在function內部使用的變數名。

// 4-1.
// String

// 4-2.
// Double

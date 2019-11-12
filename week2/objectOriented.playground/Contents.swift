// 1.
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}

// 2.
class Elephant: Animal {
    override func eat() {
        print("I eat leaves!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass!")
    }
}

// 3.
class Zoo {
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger(gender: .male))
let elephant = Elephant(gender: .male)
elephant.eat()
let tiger = Tiger(gender: .female)
tiger.eat()
let horse = Horse(gender: .undefined)
horse.eat()
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

// 4.
// Struct是value type，用struct建立instance給一個identifier(variable、constant)時，是容納該instance的所有內容在裡面；
// 當指定一個identifier等於一個擁有struct instance的identifier時，代表複製一個相同內容的新instance放進去，
// 所以後來的identifier改變struct的內容，也不會影響到原本的identifier的內容。
// Class是reference type，identifier容納的只是存放該instance的位置；
// 不同的identifier，如果存放同樣instance的位置，只要改變其中一個的內容，其他也會跟著連動。
// Class不會自動產生initializer，需要自己寫；
// Class有inheritance，可以繼承另一個class。
// Type casting可以讓你在執行時檢查class instance的type。
// Deinitializers可以讓class instance釋放它使用到的資源。

// 5.
// instance methods為用class、structure、enumeration(type)建立instance後，透過instance才可呼叫的functions；
// 寫法與建立function一樣，需寫在所屬type的大括號內。
// type methods為直接用type本身呼叫的function；
// 於class裡建立type methods需在func前加上class，而structure、enumeration裡需在func前加上static。

// 6.
// 建立一個instance前的準備程序，設定初始值給每一個stored property，和一些需要在instance被使用前要執行的動作。

// 7.
// instance method中的self為instance本身。
// type method中的self為type本身。

// 8.
// value type：每一個instance的內容都佔據不同的記憶體空間，彼此互不影響。
// 當指定一個identifier等於一個擁有value type instance的identifier時，代表複製一個相同內容的新instance放進去，
// 所以後來的identifier改變內容，也不會影響到原本的identifier的內容。
// reference type：每一個instance指向存於同一個記憶體空間的內容。
// 當指定一個identifier等於一個擁有reference type instance的identifier時，兩者皆儲存同一個記憶體位置，指向同一個內容，
// 只要改變其中一個的內容，其他也會跟著連動。

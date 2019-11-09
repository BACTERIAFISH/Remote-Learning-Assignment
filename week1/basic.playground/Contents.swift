// 1.
let Pi: Double = 3.1415
// Pi為固定的常數，所以使用let，因為有小數點，所以使用type Double，Double比Float可以存更多的小數位。

// 2.
let x: Int = 2
let y: Int = 5
let average = (x + y) / 2

// 3-1.
let average2 = Double(65)

// 3-2.
let thisIsInt = 10 / 3 // 3
let thisIsDouble = 10.0 / 3.0 // 3.3333333333...
// 沒加小數點的數字會被推斷是type Int，兩個Int算出來的值type也會是Int，故不會顯示小數點後的數值；
// 有加小數點的數字會被推斷是type Double，兩個Double算出來的值type為Double，會保留小數點後的數值。

// 4.
var flag: Bool = true
var inputString: String = "Hello World."
var bitsInBite: Int = 8
var averageScore: Double = 86.8

// 5.
var salary = 22000
salary += 28000

// 6.
// Equality operator: ==

// 7.
let a = 10
let b = 3
let remain = a % b

// 8.
// let：把值設定進ㄧ個constant，之後就無法更改裡面的值。如果一開始只有設定type並沒有給予constant任何一個值的話，允許之後可以設定值一次。
// var：把值設定進一個variable，之後可以更改裡面的值，但要給予的值要符合variable的type。

// 9.
// 不要使用swift內建的保留字來命名，如var、func、true。
// 使用camel case，如thisIsExample。


// 10.
// 當建立一個constant或variable時，沒有設定type，此時swift會藉由裡面的值來推斷type為何。

// 11.
var phoneNumber = 0987654321 // phoneNumber因為給予的值為Int，所以type被推斷為Int
// phoneNumber = "Hello world." // 後來變更的值為String，不符合type Int，所以會出現error。

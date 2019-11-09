// 1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for i in lottoNumbers.count - 3...lottoNumbers.count - 1 {
    print(lottoNumbers[i])
}
print("-----")

// 2-1.
for i in (0...lottoNumbers.count - 1).reversed() {
    print(lottoNumbers[i])
}
print("-----")

for i in stride(from: lottoNumbers.count - 1, through: 0, by: -1) {
    print(lottoNumbers[i])
}
print("-----")

// 2-2.
for i in stride(from: 0, through: 4, by: 2) {
    print(lottoNumbers[i])
}
print("-----")

// 3-1.
var index = lottoNumbers.count - 3
while index < lottoNumbers.count {
    print(lottoNumbers[index])
    index += 1
}
print("-----")

// 3-2.
index = lottoNumbers.count - 1
while index >= 0 {
    print(lottoNumbers[index])
    index -= 1
}
print("-----")

// 3-3.
index = 0
while index < lottoNumbers.count {
    print(lottoNumbers[index])
    index += 2
}
print("-----")

// 4-1.
index = lottoNumbers.count
repeat {
    index -= 1
    print(lottoNumbers[index])
} while index > 0
print("-----")

// 4-2.
index = 0
repeat {
    print(lottoNumbers[index])
    index += 2
} while index < lottoNumbers.count
print("-----")

// 5.
// repeat-while 會先執行一次大括號內的程式一次，再去做條件判斷；while 會直接做條件判斷，如果不符合條件，一次都不會執行。

// 6.
var isRaining = "raining"
if isRaining == "raining" {
    print("It's raining, I don't want to work today.")
} else {
    print("Although It's sunny, I still don't want to work today.")
}

// 7.
var jobLevel = Int.random(in: 1...5)
switch jobLevel {
    case 1:
        print("Member")
    case 2:
        print("Team Leader")
    case 3:
        print("Manager")
    case 4:
        print("Director")
    default:
        print("We don't have this job")
}

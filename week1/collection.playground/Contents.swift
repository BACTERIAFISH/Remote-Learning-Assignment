// 1.
var myFriends = [String]()

// 2.
myFriends += ["Ian", "Bomi", "Kevin"]

// 3.
myFriends.append("Michael")

// 4.
if let kevinIndex = myFriends.firstIndex(of: "Kevin") {
    let kevin = myFriends.remove(at: kevinIndex)
    myFriends.insert(kevin, at: 0)
}

// 5.
for friend in myFriends {
    print(friend)
}

// 6.
// myFriends[5]
// 由於此Array在index 5的位置沒有東西，所以會出現error

// 7.
myFriends[0]
myFriends.first

// 8.
myFriends[myFriends.count - 1]
myFriends.last

// 9.
var myCountryNumber = [String: Int]()

// 10.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

// 11.
myCountryNumber["GB"] = 0

// 12.
myCountryNumber.isEmpty

// 13.
myCountryNumber.removeValue(forKey: "GB")
myCountryNumber["US"] = nil
print(myCountryNumber)

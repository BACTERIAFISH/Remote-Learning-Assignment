let isOdd = { (input: Int) -> Bool in
  return input % 2 != 0
}

let sevenIsOdd = isOdd(7)
let tenIsOdd = isOdd(10)
let negativeNine = isOdd(-9)
let negativeFour = isOdd(-4)

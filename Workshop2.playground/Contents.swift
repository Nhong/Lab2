import UIKit

//MARK: - Workshop 2.1

func printFullName(firstName: String, lastName: String) {
    print(firstName + " " + lastName)
}

printFullName(firstName: "Kittinun",
              lastName: "Chobtham")

// MARK: - Workshop 2.2

func fahrenheitFromCelsius(celsius: Float) -> Float {
    return (9.0 * celsius / 5.0) + 32.0
}

func printFahrenheitFromCelsiusConversion(celsius: Float) {
    let fahrenheit = fahrenheitFromCelsius(celsius: celsius)
    
    print("celsius: \(celsius) => fahrenheit: \(fahrenheit)")
}

printFahrenheitFromCelsiusConversion(celsius: 37.0)

// MARK: - Workshop 2.3

func max2(number1: Int,
          number2: Int) -> Int {
    return number1 > number2 ? number1 : number2
}

func max3(number1: Int,
          number2: Int,
          number3: Int) -> Int {
    let resultMax2 = max2(number1: number1,
                          number2: number2)
    
    return max2(number1: resultMax2,
                number2: number3)
}

func max4(number1: Int,
          number2: Int,
          number3: Int,
          number4: Int) -> Int {
    let resultNumber1 = max2(number1: number1,
                             number2: number2)
    let resultNumber2 = max2(number1: number3,
                             number2: number4)
    
    return max2(number1: resultNumber1,
                number2: resultNumber2)
}

func max8(number1: Int,
          number2: Int,
          number3: Int,
          number4: Int,
          number5: Int,
          number6: Int,
          number7: Int,
          number8: Int) -> Int {
    let resultNumber1 = max4(number1: number1,
                             number2: number2,
                             number3: number3,
                             number4: number4)
    let resultNumber2 = max4(number1: number5,
                             number2: number6,
                             number3: number7,
                             number4: number8)
    
    return max2(number1: resultNumber1,
                number2: resultNumber2)
}


print(max8(number1: -5,
           number2: -2,
           number3: -9,
           number4: -6,
           number5: -1,
           number6: -100,
           number7: -20,
           number8: -20))

// MARK: - Workshop 2.4

var myFavoriteSong1: String?

if myFavoriteSong1 != nil {
    print(myFavoriteSong1!)
} else {
    print(myFavoriteSong1)
}


// MARK: - Workshop 2.5

var myFavoriteSong: String? = "เราจะทำตามสัญญา"

if let song = myFavoriteSong {
    print(song)
} else {
    print("I don’t have a favorite song.")
}

// MARK: - Workshop 2.6

var songs: [String] = ["โดเรมี", "ฉันไม่มีเธอ", "คำสัญญา", "lol"]

songs.insert("แมว", at: 2)
songs.removeLast()

print(songs)

// MARK: - Workshop 2.7

let information: [String: String] = ["name": "Jame",
                                     "tel": "0000",
                                     "address": "Bangkok"]

func name() -> String {
    return information["name"]!
}

func address() -> String {
    return information["address"]!
}

func tel() -> String {
    return information["tel"]!
}

print( name() + " " + tel() + " " + address())

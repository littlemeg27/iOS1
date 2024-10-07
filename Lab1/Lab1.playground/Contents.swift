import UIKit

//a constant Bool
let sampleBool = true

//a Float
let sampleFloat = -10

//a constant UInt32
let sampleUInt32: UInt32 = 123456

//an array of Strings
var sampleList = ["One", "Two"]

//an EMPTY array of Ints
let emptyArray: [Int] = []

//an array of arrays of Doubles
let arrayOfArrays: [[Double]] = [[1.1, 2.2], [3.3, 4.4], [5.5, 6.6]]

//String Concatenation
//1.
var cityName: String = "Charlotte"
var stateName: String = "North Carolina"

//2.
var hometown: String = cityName + ", " + stateName

//3.
var population: Int = 897720

//4.
print("I live in \(hometown), which has \(population) people that live there.")

//Random and Shuffle
//1.
let randomInt = Int.random(in: 1...1000)

//2.
let randomDouble = Double.random(in: 0.0...1.5)

//3.
//a.
import Foundation
let randomInt2 = Int.random(in: 0...10)

//b.
let roundedValue = randomInt2 >= 1 && randomInt2 <= 4 ? 0 : (randomInt2 >= 5 && randomInt2 <= 9 ? 10 : randomInt2)

print("Random Int: \(randomInt2), Rounded Value: \(roundedValue)")

//4.
import Foundation

//a.
var states = ["North Carolina", "South Carolina", "Texas", "Virginia", "New York", "Tennessee", "Pennsylvania", "Alabama", "Georgia", "North Carolina", "Kentucky"]

//b.
states.sort()

//c.
states.shuffle()

//d.
for (index, state) in states.enumerated()
{
    print("The number \(index + 1) state in our array is \(state).")
}

//Simple Functions
//1.
import Foundation

func printMessage()
{
    print("Have the courage to follow your heart and intuition. They somehow know what you truly want to become.")
}

printMessage()

//2.
import Foundation

// Define the function
func formatIntToString(_ number: Int) -> String {
    return "The Int that was passed into this function was \(number)."
}

// Call the function and print the return value
let result = formatIntToString(42)
print(result)

//Random Int Array Function
//1.
import Foundation

func RandomIntsFunction()
{
    var greaterThanTen = 0
    var exactlyTen = 0
    var lessThanTen = 0

    var randInt: [Int] = (1...10).map
    {
        _ in Int.random(in: 1...20)
    }
    
    for value in randInt
    {
        if value > 10
        {
            greaterThanTen += 1
        }
        else if value < 10
        {
            lessThanTen += 1
        }
        else
        {
            exactlyTen += 1
        }
    }
    
    print("Random Int Array: \(randInt)")
    
    print("Total less than 10: \(lessThanTen), exactly 10: \(exactlyTen), greater than 10: \(greaterThanTen)")
}
RandomIntsFunction()

//Nested Arrays Function
//1.
import Foundation

let arrayOfDoubles: [[Double]] = [
    [1.1, 2.2, 3.3, 4.4, 5.5],
    [6.6, 7.7, 8.8, 9.9, 10.1],
    [11.2, 12.3, 13.4, 14.5, 15.6]
]

//2.
func NestedDouble(from arrays: [[Double]]) -> String
{
    var resultString = ""

    for innerArray in arrays
    {
        for number in innerArray
        {
            resultString += "\(number) "
        }
    }

    return resultString.trimmingCharacters(in: .whitespaces)
}

let results = NestedDouble(from: arrayOfDoubles)
print("Concatenated Doubles: \(results)")

//Switch and Range Function
//1.
import Foundation

func generateRandomInts() -> [Int]
{
    var randomInts: [Int] = []

    for _ in 0..<10
    {
        let randomInt = Int.random(in: 1...100)
        randomInts.append(randomInt)
    }
    print("Generated Random Ints: \(randomInts)")
    return randomInts
}

//2.
import Foundation

func SwitchArry(_ numbers: [Int])
{
    var case1Count = 0
    var case2Count = 0
    var case3Count = 0
    
    for number in numbers
    {
        switch number
        {
        case 1...33:
            case1Count += 1
        case 34...66:
            case2Count += 1
        case 67...100:
            case3Count += 1
        default:
            print("Number \(number) is out of range.")
        }
    }

    print("The first case was hit \(case1Count) times, the second case was hit \(case2Count) times, and the third case was hit \(case3Count) times.")
}











import UIKit

//1.
import Foundation

func RandomDouble() -> Double
{
    let randomDouble = Double.random(in: 0...100)
    return randomDouble
}
let randomValue = RandomDouble()
print("Generated Random Double: \(randomValue)")

//2.
import Foundation

func DoubleToInt() -> Double
{
    return Double.random(in: 0...100)
}

func multiplyAndRound(double1: Double, double2: Double) -> Int
{
    let result = double1 * double2
    let resultRounded = Int(result.rounded())

    print("Values passed in: \(double1) and \(double2), rounded result: \(resultRounded)")
    
    return resultRounded
}

let randomValue1 = DoubleToInt()
let randomValue2 = DoubleToInt()

let finalResult = multiplyAndRound(double1: randomValue1, double2: randomValue2)
print("Final rounded result: \(finalResult)")

//3.
import Foundation

func processStringArray(_ strings: [String])
{
    switch strings.count
    {
        case 1...3:
            let reversedStrings = strings.map
            { String($0.reversed()) }
            print("Reversed Strings: \(reversedStrings)")
            
        case 4...6:
            let reversedOrder = strings.reversed()
            print("Reversed Order: \(Array(reversedOrder))")
            
        case let count where count > 6:
            let sortedStrings = strings.map { $0.lowercased() }.sorted()
            print("Alphabetical Order:")
            for string in sortedStrings
            {
                print(string)
            }
            
        default:
            break
    }
}

var stringArray = ["zebra", "JAGUAR", "apple"]
processStringArray(stringArray)

stringArray.append(contentsOf: ["Blue", "eMerald"])
processStringArray(stringArray)

stringArray.append(contentsOf: ["beads", "BEAR"])
processStringArray(stringArray)

//4.
import Foundation

func countVowelsAndConsonants(from text: String) -> (numVowels: Int, numConsonants: Int)
{
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var numVowels = 0
    var numConsonants = 0
    
    let words = text.split(separator: " ")

    for word in words
    {
        if let firstCharacter = word.first
        {
            if vowels.contains(firstCharacter)
            {
                numVowels += 1
            }
            else if firstCharacter.isLetter
            {
                numConsonants += 1
            }
        }
    }
    return (numVowels, numConsonants)
}

let paragraph = """
It real sent your at. Amounted all shy set why followed declared. Repeated of endeavor mr position kindness offering ignorant so up. Simplicity are melancholy preference considered saw companions. Disposal on outweigh do speedily in on. Him ham although thoughts entirely drawings. Acceptance unreserved old admiration projection nay yet him. Lasted am so before on esteem vanity oh.

Behaviour we improving at something to. Evil true high lady roof men had open. To projection considered it precaution an melancholy or. Wound young you thing worse along being ham. Dissimilar of favourable solicitude if sympathize middletons at. Forfeited up if disposing perfectly in an eagerness perceived necessary. Belonging sir curiosity discovery extremity yet forfeited prevailed own off. Travelling by introduced of mr terminated. Knew as miss my high hope quit. In curiosity shameless dependent knowledge up.
"""

let result = countVowelsAndConsonants(from: paragraph)
print("Number of words starting with vowels: \(result.numVowels), Number of words starting with consonants: \(result.numConsonants)")



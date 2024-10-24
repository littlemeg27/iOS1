//
//  DogObject.swift
//  Lab6
//
//  Created by Brenna Pavlinchak on 10/22/24.
//

import Foundation

class DogObject
{
    var breed: String
    var age: Int
    var isSpayedOrNeutered: Bool
    
    var status: String
    {
        return isSpayedOrNeutered ? "Spayed" : "Neutered"
    }
    
    var ageCategory: String
    {
        switch age
        {
        case 0...2:
            return "Puppy"
        case 3...4:
            return "Young Adult"
        case 5...8:
            return "Adult"
        default:
            return "Senior"
        }
    }

    init()
    {
        self.breed = "Standard Poodle"
        self.age = 0
        self.isSpayedOrNeutered = false
    }
    
    init(breed: String, age: Int, isSpayedOrNeutered: Bool)
    {
        self.breed = breed
        self.age = age
        self.isSpayedOrNeutered = isSpayedOrNeutered
    }

    func toggleActiveStatus()
    {
        isSpayedOrNeutered.toggle()
    }
    
    func incrementAge()
    {
        age += 1
    }
}

//
//  DogObject.swift
//  Lab6
//
//  Created by Brenna Pavlinchak on 10/22/24.
//

import Foundation

class DogObject
{
    // Stored Properties
    var breed: String
    var age: Int
    var isSpayedOrNeutered: Bool
    
    // Computed Properties
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
    
    // Initializers
    init()
    {
        self.breed = "Default Name"
        self.age = 0
        self.isSpayedOrNeutered = false
    }
    
    init(name: String, age: Int, isSpayedOrNeutered: Bool)
    {
        self.breed = name
        self.age = age
        self.isSpayedOrNeutered = isSpayedOrNeutered
    }
    
    // Instance Methods
    func toggleActiveStatus()
    {
        isSpayedOrNeutered.toggle()
    }
    
    func incrementAge()
    {
        age += 1
    }
}

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
    var isActive: Bool
    
    // Computed Properties
    var status: String
    {
        return isActive ? "Active" : "Inactive"
    }
    
    var ageCategory: String
    {
        switch age
        {
        case 0...24:
            return "Puppy"
        case 13...19:
            return "Teenager"
        case 20...64:
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
        self.isActive = false
    }
    
    init(name: String, age: Int, isActive: Bool)
    {
        self.breed = name
        self.age = age
        self.isActive = isActive
    }
    
    // Instance Methods
    func toggleActiveStatus()
    {
        isActive.toggle()
    }
    
    func incrementAge()
    {
        age += 1
    }
}

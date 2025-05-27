//
//  University.swift
//  SwiftPart2
//
//  Created by Vika on 25.05.25.
//

import Foundation

struct University {
    let name: String
    let location: String
    
    var description: String {
        return "University \(name) is located in \(location)"
    }
    
    /// memberwise initializer
    /// Structure types automatically receive a memberwise initializer if they don’t define any of their own custom initializers.
    /// We can use it to initialize a new university:  let oxfordUniversity = University(name: "Oxford", location: "UK")
}

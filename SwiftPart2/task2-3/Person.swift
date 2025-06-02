//
//  Person.swift
//  SwiftPart2
//
//  Created by Vika on 25.05.25.
//

import Foundation

class Person {
    
    let name: String
    let age: Int
    
    var isAdult: Bool {
        return age >= 18
    }
    
    static let minAgeForEnrollment = 16

    lazy var profileDescription: String = {
        return "\(name) is \(age) years old."
    }()
    
    /// designated initializer
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    /// failable initializer (fails if age is less than 16)
    init?(name: String, age: Int, checkAge: Bool) {
        guard age >= 16 else { return nil }
        self.name = name
        self.age = age
    }
}

class Student: Person {
    let studentID: String
    let major: String

    static var studentCount = 0
    
    weak var advisor: Professor?
    
    var formattedID: String {
        return "ID: \(studentID.uppercased())"
    }
    
    /// required initializer
    required init(name: String, age: Int, studentID: String, major: String) {
        self.studentID = studentID
        self.major = major
        super.init(name: name, age: age)
        Student.studentCount += 1
    }
    
    /// convenience initializer
    convenience init(studentID: String) {
        self.init(name: "Unknown", age: 18, studentID: studentID, major: "None")
    }
    
    deinit {
        Student.studentCount -= 1
    }
}

class Professor: Person {
    let faculty: String
    
    static var professorCount = 0
    
    var fullTitle: String {
        return "Professor: \(name)"
    }
    
    /// custom initializer calling the superclass
    init(name: String, age: Int, faculty: String) {
        self.faculty = faculty
        super.init(name: name, age: age)
        Professor.professorCount += 1
    }
    
    deinit {
        Professor.professorCount -= 1
    }
}


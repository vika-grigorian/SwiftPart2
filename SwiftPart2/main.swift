//
//  main.swift
//  SwiftPart2
//
//  Created by Vika on 27.05.25.
//

import Foundation

//MARK: - checking task1
print("---\nTask1\n---")

let admin = AdminUser()

admin.registerUser(username: "anna", email: "anna@example.com", password: "1111")
admin.registerUser(username: "jack", email: "jack@example.com", password: "abcd")

admin.login(username: "anna", password: "1111")
admin.login(username: "jack", password: "2222")

print("User count: \(admin.userCount)")

print("All users: \(admin.listAllUsers())")

admin.removeUser(username: "anna")

print("All users after deletion: \(admin.listAllUsers())")

// MARK: - Checking Task 2
print("---\nTask2\n---")

/// 1. Designated initializer
let person = Person(name: "maria", age: 25)
print("Person created: \(person.name), age: \(person.age)")

/// 2. Failable initializer (age < 16)
if let youngPerson = Person(name: "nick", age: 15, checkAge: true) {
    print("Created: \(youngPerson.name)")
} else {
    print("Failed to create person under age 16")  // This will be printed
}

/// 3. Student required initializer
let student = Student(name: "alex", age: 20, studentID: "s123", major: "CS")
print("Student: \(student.name), major: \(student.major)")

/// 4. Student convenience initializer
let defaultStudent = Student(studentID: "st001")
print("Student: \(defaultStudent.name), major: \(defaultStudent.major)")

/// 5. Professor with custom initializer
let professor = Professor(name: "Dr. Smith", age: 45, faculty: "Engineering")
print("Professor: \(professor.fullTitle), Faculty: \(professor.faculty)")


// MARK: - Checking Task 3
print("---\nTask3\n---")

/// Computed property isAdult
print("\(student.name) is adult: \(student.isAdult)")

/// Static property minAgeForEnrollment
print("Minimum age to enroll: \(Person.minAgeForEnrollment)")

/// Lazy property
print(student.profileDescription)

/// Static student count
print("Student count: \(Student.studentCount)")

/// Formatted student ID
print("Formatted ID: \(student.formattedID)")

/// Advisor (weak reference)
student.advisor = professor
print("\(student.name)'s advisor: \(student.advisor?.name ?? "none")")

/// Professor count
print("Professor count: \(Professor.professorCount)")

/// University memberwise init + computed property
let mit = University(name: "MIT", location: "USA")
print(mit.description)

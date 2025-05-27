//
//  UserManager.swift
//  SwiftPart2
//
//  Created by Vika on 25.05.25.
//


class UserManager {
    
    var users: [String: User] = [:]
    var userCount: Int {
        return users.count
    }
    
    func registerUser(username: String, email: String, password: String) -> Bool {
            guard !username.isEmpty, !password.isEmpty else {
                print("Username and password cannot be empty")
                return false
            }

            guard users[username] == nil else {
                print("User already exists")
                return false
            }

            let newUser = User(username: username, email: email, password: password)
            users[username] = newUser
            print("User '\(username)' registered successfully")
            return true
        }

        func login(username: String, password: String) -> Bool {
            guard !username.isEmpty, !password.isEmpty else {
                return false
            }

            guard let user = users[username] else {
                print("User not found")
                return false
            }

            if user.password == password {
                print("Login successful for user: \(username)")
                return true
            } else {
                print("Incorrect password")
                return false
            }
        }

        func removeUser(username: String) -> Bool {
            if users.removeValue(forKey: username) != nil {
                print("User '\(username)' removed")
                return true
            } else {
                print("User not found")
                return false
            }
        }
}

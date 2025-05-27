//
//  AdminUser.swift
//  SwiftPart2
//
//  Created by Vika on 25.05.25.
//

class AdminUser: UserManager {
    func listAllUsers() -> [String] {
        return Array(users.keys)
    }
    
    deinit {
        print("AdminUser instance has been deallocated")
    }
}

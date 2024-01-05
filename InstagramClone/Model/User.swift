//
//  User.swift
//  InstagramClone
//
//  Created by Vefa Kosova on 5.12.2023.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Vanda Maximoff", profileImageUrl: "vandamaximoff-2", fullname: "Vanda Maximoff", bio: "Justice", email: "vandam@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Natasha", profileImageUrl: "natasha-2", fullname: "Natasha Maximoff", bio: "scarlet", email: "scarlet@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageUrl: "ironman-2", fullname: "Tony Stark", bio: "Playboy and Billionaire", email: "tony@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Flash", profileImageUrl: "flash-1", fullname: nil, bio: "Lightning", email: "barryallen@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman", profileImageUrl: "batman-1", fullname: "Bruce Wayne", bio: "Gothom", email: "bruce@gmail.com")
    ]
}

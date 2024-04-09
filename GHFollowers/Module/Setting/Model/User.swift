//
//  User.swift
//  GHFollowers
//
//  Created by alphansotech100 on 06/04/24.
//

import Foundation
import UIKit
struct User: Codable {
    var login: String
    var avtarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createAt: String
}

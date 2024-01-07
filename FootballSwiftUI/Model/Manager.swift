//
//  Manager.swift
//  FootballSwiftUI
//
//  Created by Oleg Plugaru on 07.01.2024.
//

import Foundation

enum Job: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager {
    let name: String
    let job: Job
}

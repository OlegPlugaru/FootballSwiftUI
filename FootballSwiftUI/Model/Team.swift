//
//  Team.swift
//  FootballSwiftUI
//
//  Created by Oleg Plugaru on 06.01.2024.
//

import Foundation

struct Team: Identifiable {
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
    
    mutating func togglePlayback() {
        self.isPlaying.toggle()
    }
    
    mutating func setIsPlayback(state: Bool) {
        self.isPlaying = state
    }
}

extension Team {
    static var dummyData: [Team] {
        return [
            Team(id: .arsenal, name: "Team 1", info: "This is some dummy information", manager: Manager(name: "Manager 1", job: .manager), founded: "1800"),
            Team(id: .astonVilla, name: "Team 2", info: "This is some dummy information", manager: Manager(name: "Manager 2", job: .manager), founded: "1840"),
            Team(id: .brighton, name: "Team 3", info: "This is some dummy information", manager: Manager(name: "Head Coach 1", job: .headCoach), founded: "1830")
        ]
    }
}

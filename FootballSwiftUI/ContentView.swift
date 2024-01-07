//
//  ContentView.swift
//  FootballSwiftUI
//
//  Created by Oleg Plugaru on 06.01.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TeamsViewModel()
    private let audioManager = AudioManagerViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.teams) { team in
                TeamCardView(team: team) { selectedTeam in
                    audioManager.playback(selectedTeam)
                    viewModel.togglePlayback(for: selectedTeam)
                }
            }
            .navigationTitle("Football Chants")
        }
    }
}

#Preview {
    ContentView()
}

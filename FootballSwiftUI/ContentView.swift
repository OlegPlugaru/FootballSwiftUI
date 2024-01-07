//
//  ContentView.swift
//  FootballSwiftUI
//
//  Created by Oleg Plugaru on 06.01.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TeamsViewModel()
    
    var body: some View {
        List(viewModel.teams) { team in
            TeamCardView(team: team) { selectedTeam in
                viewModel.togglePlayback(for: selectedTeam)
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  TeamCardView.swift
//  FootballSwiftUI
//
//  Created by Oleg Plugaru on 07.01.2024.
//

import SwiftUI

struct TeamCardView: View {
    typealias ChantPlayBackHandler = (_ team: Team) -> Void
    let team: Team
    var handler: ChantPlayBackHandler
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Image(team.id.badge)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .accessibility(label: Text("\(team.name) Badge"))
                VStack(alignment: .leading, spacing: 5) {
                    Text(team.name)
                        .font(.system(size: 18, weight: .bold))
                        .accessibility(label: Text("Team Name"))
                        .accessibility(value: Text(team.name))
                    Text("Founded: \(team.founded)")
                        .font(.system(size: 12, weight: .light))
                        .accessibility(label: Text("Team Founded"))
                        .accessibility(value: Text(team.founded))
                    Text("Current \(team.manager.job.rawValue): \(team.manager.name)")
                        .font(.system(size: 10, weight: .light))
                        .accessibility(label: Text("\(team.manager.job.rawValue)"))
                        .accessibility(value: Text(team.manager.name))
                    Text(team.info)
                        .font(.system(size: 12, weight: .medium))
                        .accessibility(label: Text("Information"))
                        .accessibility(value: Text(team.info))
                }
                Spacer()
                Button {
                    handler(team)
                } label: {
                    Image(systemName: team.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                .frame(maxWidth: 40, maxHeight: .infinity, alignment: .center)
                .accessibilityElement(children: .ignore)
                .accessibility(value: Text(team.isPlaying ? "Pause" : "Play"))
            }
        }
        .applyTeamCardStyle(teamType: team.id)
    }
}

#Preview {
    Group {
        TeamCardView(team: Team.dummyData[0], handler: { _ in })
            .previewLayout(.fixed(width: 400, height: 150))
            .padding()
            .previewDisplayName("Team Card Preview")
        TeamCardView(team: Team.dummyData[1], handler: { _ in })
            .previewLayout(.fixed(width: 400, height: 150))
            .padding()
            .previewDisplayName("Team Card Preview")
    }
}

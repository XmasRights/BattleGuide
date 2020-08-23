//
//  GuideView.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 23/08/2020.
//

import SwiftUI

struct GuideView: View {
    let attackProvider: GuideViewProvider?
    let defenceProvider: GuideViewProvider?

    var body: some View {
        VStack(spacing: 40) {
            if let provider = attackProvider {
                section(title: "Attacking ⚔️", provider: provider)
            }

            if let provider = defenceProvider {
                section(title: "Defending 🛡", provider: provider)
            }
            Spacer()
        }
        .padding()
    }

    private func section(title: String, provider: GuideViewProvider) -> some View {
        VStack {
            Text(title)
                .font(.title)

            ForEach(Effectiveness.allCases, id: \.self) { eft in
                TypeContainer(
                    title: eft.title,
                    typeLabelStyle: .compact,
                    contents: provider.types(for: eft),
                    strokeColor: .gray
                )
            }
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView(
            attackProvider: MockAttackProvider(),
            defenceProvider: MockDefenceProvider()
        )
    }
}

struct MockAttackProvider: GuideViewProvider {
    func types(for effectiveness: Effectiveness) -> [Type] {
        guard effectiveness != .normal else { return [] }
        return [.fire, .electric, .grass]
    }
}

struct MockDefenceProvider: GuideViewProvider {
    func types(for effectiveness: Effectiveness) -> [Type] {
        guard effectiveness != .normal else { return [] }
        return [.ground, .fairy]
    }
}

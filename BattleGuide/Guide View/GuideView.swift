//
//  GuideView.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 23/08/2020.
//

import SwiftUI

struct GuideView: View {
    let provider: GuideViewProvider

    private struct Data: Hashable {
        let title: String
        let types: [Type]
    }

    private var attackData: [Data] {
        Effectiveness.allCases.compactMap { effectiveness in
            // TODO
            return Data(title: effectiveness.title, types: [])
        }
    }

    private var defenceData: [Data] {
        Effectiveness.allCases.compactMap { effectiveness in
            // TODO
            return Data(title: effectiveness.title, types: [])
        }
    }
    var body: some View {
        ScrollView {
            VStack {
                section(title: "Attacking ⚔️", data: attackData)
                section(title: "Defending 🛡", data: defenceData)
            }
        }
    }

    private func section(title: String, data: [Data]) -> some View {
        VStack {
            if !data.isEmpty {
                Text(title)
                    .font(.title)

                List {
                    ForEach(data, id: \.self) { entry in
                        TypeContainer(
                            title: entry.title,
                            typeLabelStyle: .compact,
                            contents: entry.types,
                            strokeColor: .gray)
                            .frame(minHeight: 60)
                    }
                }
            }
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView(provider: MockProvider())
    }
}

private struct MockProvider: GuideViewProvider {
    func types(for effectiveness: Effectiveness) -> [Type] {
        return [.fire, .electric]
    }
}

//
//  GuideView.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 23/08/2020.
//

import SwiftUI

struct GuideView: View {
    var body: some View {
        VStack {
            Text("Attacking ⚔️")
                .font(.title)

            List {
                ForEach((1...4), id: \.self) { _ in
                    TypeContainer(
                        title: "0x",
                        typeLabelStyle: .compact,
                        contents: [.grass],
                        strokeColor: .gray)
                        .frame(minHeight: 60)
                }
            }

            Text("Defending 🛡")
                .font(.title)

            List {
                ForEach((1...4), id: \.self) { _ in
                    TypeContainer(
                        title: "0x",
                        typeLabelStyle: .expanded,
                        contents: [.water, .fire, .ghost],
                        strokeColor: .gray)
                        .frame(minHeight: 60)
                }
            }

            Spacer()
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}

//
//  ContentView.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 05/07/2020.
//

import SwiftUI

struct ContentView: View {
    @State var style: TypeLabel.Style = .compact

    var body: some View {
        VStack() {
            ScrollView {
                GuideView(
                    attackProvider: MockAttackProvider(),
                    defenceProvider: MockDefenceProvider(),
                    typeLabelStyle: style
                )
                .onTapGesture(perform: toggleStyle)

                Spacer()
            }

            Divider()
            SelectionPanel()
        }
    }

    private func toggleStyle() {
        withAnimation {
            style.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

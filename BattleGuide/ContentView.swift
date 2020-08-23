//
//  ContentView.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 05/07/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GuideView(
            attackProvider: MockAttackProvider(),
            defenceProvider: MockDefenceProvider()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

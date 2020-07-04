//
//  ContentView.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 05/07/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = Set<Type.ID>()
    @Namespace var animation

    var body: some View {
        VStack {
            BattleCanvas(selected: $selected, animation: animation)
            TypeBanner(selected: $selected, animation: animation)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

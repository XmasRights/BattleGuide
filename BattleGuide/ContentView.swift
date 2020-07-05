//
//  ContentView.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 05/07/2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var typeStore = TypeStore()
    @Namespace var animation

    var body: some View {
        VStack {
            BattleCanvas(typeStore: typeStore, animation: animation)
            TypeBanner(typeStore: typeStore, animation: animation)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

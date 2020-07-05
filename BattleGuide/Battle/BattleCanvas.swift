//
//  BattleCanvas.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 05/07/2020.
//

import SwiftUI

struct BattleCanvas: View {
    @ObservedObject var typeStore: TypeStore
    let animation: Namespace.ID

    var body: some View {
        VStack {
			Text("Weak To")

            HStack {
                Text("4x")
                    .padding()
                    .overlay(
                        Circle()
                            .stroke(Color.green)
                    )

                VStack {
                    TypeLabel(type: .fighting)
                        .frame(width: 120, height: 80)
                    TypeLabel(type: .normal)
                        .frame(width: 120, height: 80)
                    TypeLabel(type: .fire)
                        .frame(width: 120, height: 80)
                }
            }

            Spacer()

			Divider()

            HStack(alignment: .center) {
                ForEach(typeStore.selectedTypes) { type in
                    TypeLabel(type: type)
                        .frame(width: 120, height: 80)
                        .padding()
                        .onTapGesture { typeStore.deselect(type: type) }
                        .matchedGeometryEffect(id: type.id, in: animation)
                }
            }
        }
    }
}

struct BattleCanvas_Previews: PreviewProvider {
    @ObservedObject static var typeStore = TypeStore()
    @Namespace static var animation

    static var previews: some View {
        BattleCanvas(typeStore: typeStore, animation: animation)
    }
}

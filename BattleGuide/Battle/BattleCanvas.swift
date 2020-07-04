//
//  BattleCanvas.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 05/07/2020.
//

import SwiftUI

struct BattleCanvas: View {
    @Binding var selected: Set<Type.ID>
    let animation: Namespace.ID

    var selectedTypes: [Type] {
        Type.all.filter { selected.contains($0.id) }
    }

    var body: some View {
        VStack {
            Spacer()

            HStack(alignment: .center) {
                ForEach(selectedTypes) { type in
                    TypeLabel(type: type)
                        .frame(width: 120, height: 80)
                        .padding()
                        .onTapGesture { deselect(type: type) }
                        .matchedGeometryEffect(id: type.id, in: animation)
                }
            }
            .background(Color.white)
        }
    }

    func deselect(type: Type) {
        withAnimation(.spring()) {
            _ = selected.remove(type.id)
        }
    }
}

struct BattleCanvas_Previews: PreviewProvider {
    @State static var selected = Set<Type.ID>([Type.grass.id, Type.fire.id])
    @Namespace static var animation

    static var previews: some View {
        BattleCanvas(selected: $selected, animation: animation)
    }
}

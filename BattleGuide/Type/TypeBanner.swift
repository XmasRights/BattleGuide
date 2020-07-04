//
//  TypeBanner.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 04/07/2020.
//

import SwiftUI

struct TypeBanner: View {
    @Binding var selected: Set<Type.ID>
    let animation: Namespace.ID

    var selectedTypes: [Type] {
        Type.all.filter { !selected.contains($0.id) }
    }

    var body: some View {
        VStack {
            Divider()

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], spacing: 8) {
                ForEach(selectedTypes) { type in
                    TypeLabel(type: type)
                        .onTapGesture { select(type: type) }
                        .matchedGeometryEffect(id: type.id, in: animation)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 8)
        }
    }

    func select(type: Type) {
        withAnimation(.spring()) {
            _ = selected.insert(type.id)
        }
    }
}

struct TypeBanner_Previews: PreviewProvider {
    @State static var selected = Set<Type.ID>()
    @Namespace static var animation

    static var previews: some View {
        TypeBanner(selected: $selected, animation: animation)
    }
}

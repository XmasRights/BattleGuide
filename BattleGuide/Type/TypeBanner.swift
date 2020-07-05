//
//  TypeBanner.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 04/07/2020.
//

import SwiftUI

struct TypeBanner: View {
    @ObservedObject var typeStore: TypeStore
    let animation: Namespace.ID

    var body: some View {
        VStack {
            Divider()

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], spacing: 8) {
                ForEach(typeStore.unselectedTypes) { type in
                    TypeLabel(type: type)
                        .onTapGesture { typeStore.select(type: type) }
                        .matchedGeometryEffect(id: type.id, in: animation)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 8)
        }
    }
}

struct TypeBanner_Previews: PreviewProvider {
    @ObservedObject static var typeStore = TypeStore()
    @Namespace static var animation

    static var previews: some View {
        TypeBanner(typeStore: typeStore, animation: animation)
    }
}

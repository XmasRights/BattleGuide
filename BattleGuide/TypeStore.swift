//
//  TypeStore.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 05/07/2020.
//

import SwiftUI

final class TypeStore: ObservableObject {
    private var selected = [Type.ID]() {
        didSet {
            selectedTypes = Type.all.filter { selected.contains($0.id) }
            unselectedTypes = Type.all.filter { !selected.contains($0.id) }
        }
    }

    @Published var selectedTypes = [Type]()
    @Published var unselectedTypes = Type.all

    func select(type: Type) {
        withAnimation(.spring()) {
            selected.append(type.id)

            if selected.count > 2 {
                selected.removeFirst()
            }
        }
    }

    func deselect(type: Type) {
        withAnimation(.spring()) {
            selected.removeAll(where: { $0 == type.id })
        }
    }
}


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
            selectedTypes = Type.allCases.filter { selected.contains($0.id) }
            unselectedTypes = Type.allCases.filter { !selected.contains($0.id) }
        }
    }

    @Published var selectedTypes = [Type]()
    @Published var unselectedTypes = Type.allCases

    func select(type: Type) {
        withAnimation {
            selected.append(type.id)

            if selected.count > 2 {
                selected.removeFirst()
            }
        }
    }

    func deselect(type: Type) {
        withAnimation {
            selected.removeAll(where: { $0 == type.id })
        }
    }
}


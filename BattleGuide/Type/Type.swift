//
//  Type.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 04/07/2020.
//

import SwiftUI

struct Type: Identifiable {
    var id: String {
        name
    }

    let name: String
    let color: Color
}

extension Type {
    static let all: [Self] = [
        .normal, .fire, .water, .electric, .grass, .ice, .fighting, .poison
    ]
}

extension Type {
    static let normal = Self.init(
        name: "Normal",
        color: .gray
    )

    static let fire = Self.init(
        name: "Fire",
        color: .red
    )

    static let water = Self.init(
        name: "Water",
        color: .blue
    )

    static let electric = Self.init(
        name: "Electric",
        color: .yellow
    )

    static let grass = Self.init(
        name: "Grass",
        color: .green
    )

    static let ice = Self.init(
        name: "Ice",
        color: .blue
    )

    static let fighting = Self.init(
        name: "Fighting",
        color: .red
    )

    static let poison = Self.init(
        name: "Poison",
        color: .purple
    )
}

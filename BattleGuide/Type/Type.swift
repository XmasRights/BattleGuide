//
//  Type.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 04/07/2020.
//

import UIKit
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
        .normal, .fire, .water, .electric, .grass, .ice, .fighting, .poison,
        .ground, .flying, .psychic, .bug, .rock, .ghost, .dragon, .dark,
        .steel, .fairy
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
        color: Color(UIColor.systemTeal)
    )

    static let fighting = Self.init(
        name: "Fighting",
        color: Color(UIColor.brown)
    )

    static let poison = Self.init(
        name: "Poison",
        color: .purple
    )

    static let ground = Self.init(
        name: "Ground",
        color: Color(red: 221 / 255.0, green: 187 / 255.0, blue: 85 / 255.0)
    )

    static let flying = Self.init(
        name: "Flying",
        color: Color(red: 136 / 255.0, green: 153 / 255.0, blue: 1.0)
    )

    static let psychic = Self.init(
        name: "Psychic",
        color: Color(red: 1.0, green: 85 / 255.0, blue: 153 / 255.0)
    )

    static let bug = Self.init(
        name: "Bug",
        color: Color(red: 170 / 255.0, green: 187 / 255.0, blue: 33 / 255.0)
    )

    static let rock = Self.init(
        name: "Rock",
        color: Color(red: 187 / 255.0, green: 170 / 255.0, blue: 102 / 255.0)
    )

    static let ghost = Self.init(
        name: "Ghost",
        color: Color(red: 102 / 255.0, green: 102 / 255.0, blue: 187 / 255.0)
    )

    static let dragon = Self.init(
        name: "Dragon",
        color: Color(red: 177 / 255.0, green: 101 / 255.0, blue: 236 / 255.0)
    )

    static let dark = Self.init(
        name: "Dark",
        color: Color(red: 119 / 255.0, green: 85 / 255.0, blue: 86 / 255.0)
    )

    static let steel = Self.init(
        name: "Steel",
        color: Color(red: 158 / 255.0, green: 158 / 255.0, blue: 172 / 255.0)
    )

    static let fairy = Self.init(
        name: "Fairy",
        color: Color(red: 238 / 255.0, green: 153 / 255.0, blue: 238 / 255.0)
    )
}

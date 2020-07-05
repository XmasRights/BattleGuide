//
//  Type.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 04/07/2020.
//

import UIKit
import SwiftUI



//struct Type: Identifiable {
//    var id: String {
//        name
//    }
//
//    let name: String
//    let color: Color
//}

enum Type: String, Identifiable, CaseIterable {
    case normal
    case fire
    case water
    case electric
    case grass
    case ice
    case fighting
    case poison
    case ground
    case flying
    case psychic
    case bug
    case rock
    case ghost
    case dragon
    case dark
    case steel
    case fairy

    var id: String {
        self.rawValue
    }

    var name: String {
        self.rawValue.capitalized
    }
}

// MARK: Colours

extension Type {
    var color: Color {
        switch self {
            case .normal:   return .gray
            case .fire: 	return .red
            case .water: 	return .blue
            case .electric: return .yellow
            case .grass:    return .green
            case .ice:      return Color(UIColor.systemTeal)
            case .fighting: return Color(UIColor.brown)
            case .poison:   return .purple
            case .ground:   return Color(red: 221 / 255.0, green: 187 / 255.0, blue: 85 / 255.0)
            case .flying:   return Color(red: 136 / 255.0, green: 153 / 255.0, blue: 1.0)
            case .psychic:  return Color(red: 1.0, green: 85 / 255.0, blue: 153 / 255.0)
            case .bug:      return Color(red: 170 / 255.0, green: 187 / 255.0, blue: 33 / 255.0)
            case .rock:     return Color(red: 187 / 255.0, green: 170 / 255.0, blue: 102 / 255.0)
            case .ghost:    return Color(red: 102 / 255.0, green: 102 / 255.0, blue: 187 / 255.0)
            case .dragon:   return Color(red: 177 / 255.0, green: 101 / 255.0, blue: 236 / 255.0)
            case .dark:     return Color(red: 119 / 255.0, green: 85 / 255.0, blue: 86 / 255.0)
            case .steel:    return Color(red: 158 / 255.0, green: 158 / 255.0, blue: 172 / 255.0)
            case .fairy:    return Color(red: 238 / 255.0, green: 153 / 255.0, blue: 238 / 255.0)
        }
    }
}

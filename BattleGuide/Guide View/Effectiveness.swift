//
//  Effectiveness.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 23/08/2020.
//

import Foundation

enum Effectiveness: CaseIterable {
    case hyper
    case `super`
    case normal
    case notVery
    case not
    case immune
}

extension Effectiveness {
    var title: String {
        switch self {
        case .hyper:   return "4x"
        case .super:   return "2x"
        case .normal:  return "1x"
        case .notVery: return "1/2x"
        case .not:     return "1/4"
        case .immune:  return "0x"
        }
    }
}

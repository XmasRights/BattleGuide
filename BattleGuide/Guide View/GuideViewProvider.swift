//
//  GuideViewProvider.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 23/08/2020.
//

import Foundation

protocol GuideViewProvider {
    func types(for effectiveness: Effectiveness) -> [Type]
}

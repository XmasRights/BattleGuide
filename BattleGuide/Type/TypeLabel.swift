//
//  TypeLabel.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 04/07/2020.
//

import SwiftUI

struct TypeLabel: View {
    let colour: Color
    let text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(colour)

            Text(text)
                .font(.headline)
                .padding()
        }
    }
}

extension TypeLabel {
    init(type: Type) {
        self = .init(colour: type.color, text: type.name)
    }
}

struct TypeLabel_Previews: PreviewProvider {
    static var previews: some View {
        TypeLabel(colour: .green, text: "Grass")
    }
}

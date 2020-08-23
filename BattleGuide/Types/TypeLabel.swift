//
//  TypeLabel.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 23/08/2020.
//

import SwiftUI

struct TypeLabel: View {
    let type: Type
    let style: Style

    var body: some View {
        VStack {
            if style == .compact {
                Circle().fill(type.color)
            }

            if style == .expanded {
                Text(self.type.name)
                    .padding()
                    .background(
                        Capsule().fill(type.color)
                    )
            }
        }
    }
}

extension TypeLabel {
    enum Style {
        case compact
        case expanded
    }
}

struct TypeLabel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TypeLabel(type: .ghost, style: .compact)
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 100, height: 100))
                .padding()
                .previewDisplayName("Dark Compact")

            TypeLabel(type: .ghost, style: .compact)
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 100, height: 100))
                .padding()
                .previewDisplayName("Light Compact")

            TypeLabel(type: .grass, style: .expanded)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
                .previewDisplayName("Dark Expanded")

            TypeLabel(type: .grass, style: .expanded)
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
                .padding()
                .previewDisplayName("Light Expanded")
        }
    }
}
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
                Text(type.name)
                    .font(.body)
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

extension TypeLabel.Style {
    mutating func toggle() {
        switch self {
        case .compact:  self = .expanded
        case .expanded: self = .compact
        }
    }
}

struct TypeLabel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TypeLabel(type: .ghost, style: .compact)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Dark Compact")

            TypeLabel(type: .ghost, style: .compact)
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Light Compact")

            TypeLabel(type: .grass, style: .expanded)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Dark Expanded")

            TypeLabel(type: .grass, style: .expanded)
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Light Expanded")
        }
    }
}

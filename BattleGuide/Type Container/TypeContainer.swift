//
//  TypeContainer.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 23/08/2020.
//

import SwiftUI

struct TypeContainer: View {
    let title: String
    let typeLabelStyle: TypeLabel.Style
    let contents: [Type]
    let strokeColor: Color

    var body: some View {
        GeometryReader { proxy in
            HStack {
                Circle()
                    .stroke(strokeColor)
                    .overlay(
                        Text(title)
                    )
                    .frame(
                        width: proxy.size.height,
                        height: proxy.size.height
                    )

                // TODO: Figure out how to make this into a cool grid
                HStack(spacing: 2) {
                    ForEach(contents) {
                        TypeLabel(type: $0, style: typeLabelStyle)
                            .frame(maxHeight: proxy.size.height - 12)
                    }
                }
                .padding(.trailing, proxy.size.height)

                Spacer()
            }
        }
        .background(
            Capsule()
                .stroke(strokeColor)
        )
    }
}

struct TypeContainer_Previews: PreviewProvider {
    static let contents: [Type] = [
        .fire, .water, .grass
    ]

    static var previews: some View {
        Group {
            TypeContainer(title: "4x", typeLabelStyle: .compact, contents: contents, strokeColor: .gray)
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 400, height: 60))
                .previewDisplayName("Dark Compact")

            TypeContainer(title: "2x", typeLabelStyle: .compact, contents: contents, strokeColor: .gray)
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 200, height: 60))
                .previewDisplayName("Light Compact")

            TypeContainer(title: "4x", typeLabelStyle: .expanded, contents: contents, strokeColor: .gray)
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 400, height: 60))
                .previewDisplayName("Dark Expanded")

            TypeContainer(title: "2x", typeLabelStyle: .expanded, contents: contents, strokeColor: .gray)
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 400, height: 60))
                .previewDisplayName("Light Expanded")
        }
    }
}

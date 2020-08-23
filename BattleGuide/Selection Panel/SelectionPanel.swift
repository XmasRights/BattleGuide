//
//  SelectionPanel.swift
//  BattleGuide
//
//  Created by Christopher Fonseka on 23/08/2020.
//

import SwiftUI

struct SelectionPanel: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(Type.allCases) { type in
                    TypeLabel(type: type, style: .expanded)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct SelectionPanel_Previews: PreviewProvider {
    static var previews: some View {
        SelectionPanel()
    }
}

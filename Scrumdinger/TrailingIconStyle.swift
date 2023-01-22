//
//  TrailingIconStyle.swift
//  Scrumdinger
//
//  Created by Josh Zappone on 1/21/23.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trainlingIcon: Self { Self() }
}

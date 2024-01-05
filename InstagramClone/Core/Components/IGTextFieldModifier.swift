//
//  IGTextFieldModifier.swift
//  InstagramClone
//
//  Created by Vefa Kosova on 4.12.2023.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)

    }
}

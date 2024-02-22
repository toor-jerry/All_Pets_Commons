//  ChipView.swift
//  All_Pets
//
//  Created by Gerardo Bautista Castañeda on 03/09/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

public struct ChipView: View {

    let titleKey: String
    let systemImage: String?
    @State var isSelected: Bool
    let isSelectedChip: () -> Void
    var enableChangeColorOnSelect: Bool

    public init(titleKey: String, isSelected: Bool, isSelectedChip: @escaping () -> Void, systemImage: String? = nil, enableChangeColorOnSelect: Bool = true) {
        self.titleKey = titleKey
        self.systemImage = systemImage
        self.isSelected = isSelected
        self.isSelectedChip = isSelectedChip
        self.enableChangeColorOnSelect = enableChangeColorOnSelect
    }

    public var body: some View {
        HStack(spacing: 4) {
            if let systemImage = systemImage {
                Image(systemName: systemImage).font(.body)
            }

            Text(titleKey).font(.body).lineLimit(1)
        }
        .foregroundColor(isSelected ? .white : .black)
        .fontWeight(.bold)
        .modifier(GenButtonPrincipal(padding: 10, color: isSelected ? Color.bluePrincipal : .white))
        .onTapGesture {
            isSelectedChip()
            if enableChangeColorOnSelect {
                isSelected.toggle()
            }
        }
    }
}

#Preview {
    ChipView(titleKey: "Title", isSelected: false, isSelectedChip: {

    })
        .previewLayout(.sizeThatFits)
        .padding()
}

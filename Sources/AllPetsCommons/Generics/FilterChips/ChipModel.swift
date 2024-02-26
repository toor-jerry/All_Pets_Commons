//  ChipModel.swift
//  All_Pets
//
//  Created by Gerardo Bautista Castañeda on 03/09/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

public struct ChipModel {
    public var isSelected: Bool
    public var id: UUID
    public let titleKey: String
    public let systemImage: String?

    public init(titleKey: String, isSelected: Bool = false, systemImage: String? = nil, id: UUID = UUID()) {
        self.isSelected = isSelected
        self.systemImage = systemImage
        self.titleKey = titleKey
        self.id = id
    }
}

//  Loader.swift
//  All_Pets
//
//  Created by Gerardo Bautista Castañeda on 09/08/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

public struct Loader: View {
    
    public init() {}
    
    public var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                ProgressView(String(localized: "MsgLoader", bundle: .module))
                    .scaleEffect(2)
                Spacer()
            }
            Spacer()
        }.background(Color.gray)
    }
}

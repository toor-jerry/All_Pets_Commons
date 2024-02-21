//  GenAligmentViewExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenAligmentViewExample: View {
    var body: some View {
        NavigationLink {
            VStack {
                CopyTextView(".modifier(\(String(describing: GenAligmentView.self))(aligment: .leading))")
                Spacer()
                VStack(spacing: 40) {
                    
                    Text(".leading")
                        .modifier(GenAligmentView(aligment: .leading))
                    Text(".trailing")
                        .modifier(GenAligmentView(aligment: .trailing))
                    Text(".center")
                        .modifier(GenAligmentView(aligment: .center))
                }
                .font(.title)
            }
        } label: {
            Text(String(describing: GenAligmentView.self))
        }
    }
}

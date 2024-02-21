//  GenAligmentViewExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenAligmentViewExample: View {
    
    let className = String(describing: GenAligmentView.self)
    
    var body: some View {
        NavigationLink {
            VStack {
                CopyTextView(".modifier(\(className)(aligment: .leading))")
                Spacer()
                Divider()
                VStack(spacing: 40) {
                    
                    Text(".leading")
                        .modifier(GenAligmentView(aligment: .leading))
                    Text(".trailing")
                        .modifier(GenAligmentView(aligment: .trailing))
                    Text(".center")
                        .modifier(GenAligmentView(aligment: .center))
                }
                .font(.title)
                Spacer()
            }
            .navigationTitle(className)
        } label: {
            Text(className)
        }
    }
}

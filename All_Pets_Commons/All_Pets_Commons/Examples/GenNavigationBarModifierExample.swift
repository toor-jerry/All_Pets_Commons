//  GenNavigationBarModifierExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenNavigationBarModifierExample: View {
    
    let className = String(describing: GenNavigationBar.self)
    
    var body: some View {
        NavigationLink {
            ScrollView {
                VStack {
                    CopyTextView(".modifier(\(className)(backgroundColor: .green, titleColor: .red))")
                    Spacer()
                    Divider()
                    VStack {
                        Spacer()
                    }
                    .font(.title)
                    Spacer()
                }
                .background(Color.backgroundPrincipal)
            }
            .navigationTitle("Title custom")
            .modifier(GenNavigationBar(backgroundColor: .green, titleColor: .red))
        } label: {
            Text(className)
        }
    }
}


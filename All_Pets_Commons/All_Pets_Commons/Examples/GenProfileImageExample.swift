//  GenProfileImageExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenProfileImageExample: View {
    
    let className = String(describing: GenProfileImage.self)
    
    var body: some View {
        NavigationLink {
            VStack {
                CopyTextView(".modifier(\(className)(aligment: .leading))")
                Spacer()
                Divider()
                VStack {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .modifier(GenProfileImage(size: 80))
                }
                .font(.title)
                Spacer()
            }
        } label: {
            Text(className)
        }
    }
}

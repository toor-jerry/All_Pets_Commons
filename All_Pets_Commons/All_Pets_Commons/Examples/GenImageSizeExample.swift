//  GenImageSizeExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenImageSizeExample: View {
    
    let className = String(describing: GenImageSize.self)
    
    var body: some View {
        NavigationLink {
            ScrollView {
                VStack {
                    CopyTextView(".modifier(\(className)())")
                    Spacer()
                    Divider()
                    VStack {
                        Text("Default:")
                        Image(systemName: "photo.fill")
                            .resizable()
                            .modifier(GenImageSize())
                        
                        Spacer()
                        Text("Custom (size: 50, padding: 30):")
                        Image(systemName: "photo.fill")
                            .resizable()
                            .modifier(GenImageSize(size: 50, padding: 30))
                        Spacer()
                    }
                    .font(.title)
                    Spacer()
                }
                .background(Color.backgroundPrincipal)
            }
        } label: {
            Text(className)
        }
    }
}

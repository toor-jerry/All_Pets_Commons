//  GenShadowStyleExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenShadowStyleExample: View {
    
    let className = String(describing: GenShadowStyle.self)
    
    var body: some View {
        NavigationLink {
            
            
            VStack {
                
                CopyTextViewCustom(className: className)
                
                Spacer()
                Divider()
                
                VStack {
                    Text("Default: ")
                    
                    Button("Example shadow", action: { })
                        .modifier(GenShadowStyle())
                    
                    Spacer()
                }
                .font(.title)
                
                
                Spacer()
            }
            .background(Color.orange)
            .navigationTitle(className)
        } label: {
            Text(className)
        }
    }
}

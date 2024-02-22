//  GenTextStyleSubtitleExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenTextStyleSubtitleExample: View {
    
    let className = String(describing: GenTextStyleSubtitle.self)
    
    var body: some View {
        NavigationLink {
            
            
            VStack {
                
                CopyTextViewCustom(className: className)
                
                Spacer()
                Divider()
                
                VStack {
                    Text("Default: ")
                    Text("Example")
                        .modifier(GenTextStyleSubtitle())
                    
                    Spacer()
                }
                .font(.title)
                
                
                Spacer()
            }
            .background(Color.backgroundPrincipal)
            .navigationTitle(className)
        } label: {
            Text(className)
        }
    }
}

//  GenInputStylePrincipalExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenInputStylePrincipalExample: View {
    
    let className = String(describing: GenInputStylePrincipal.self)
    
    var body: some View {
        NavigationLink {
            
            
            VStack {
                
                CopyTextViewCustom(className: className)
                
                Spacer()
                Divider()
                
                VStack {
                    Text("Default: ")
                    
                    Text("Example on text")
                        .modifier(GenInputStylePrincipal())
                    
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

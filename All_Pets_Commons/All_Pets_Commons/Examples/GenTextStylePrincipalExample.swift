//  GenTextStylePrincipalExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenTextStylePrincipalExample: View {
    
    let className = String(describing: GenTextStylePrincipal.self)
    
    var body: some View {
        NavigationLink {
            
            
            VStack {
                
                CopyTextViewCustom(className: className)
                
                Spacer()
                Divider()
                
                VStack {
                    Text("Default: ")
                    Text(".frame(width: 150, height: 19, alignment: .top)")
                        .font(.headline)
                    Text("´´font color: white´´")
                        .font(.headline)
                    
                    Text("Example on text")
                        .modifier(GenTextStylePrincipal())
                    
                    Spacer()
                    
                    Text("Custom:")
                    
                    Text("Example on text")
                        .modifier(GenTextStylePrincipal(color: .blue, setWidth: false, fontSize: .title))
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

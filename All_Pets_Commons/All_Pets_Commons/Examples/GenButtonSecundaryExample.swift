//  GenButtonSecundaryExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenButtonSecundaryExample: View {
    
    let className = String(describing: GenButtonSecundary.self)
    
    var body: some View {
        NavigationLink {
            
            
            VStack {
                
                CopyTextViewCustom(className: className)
                
                Spacer()
                Divider()
                
                VStack {
                    Text("Default: ")
                    
                    Button("Example GenButtonSecundary", action: {})
                        .modifier(GenButtonSecundary())
                    
                    Spacer()
                    
                    Text("Custom:")
                    Button(action: {}, label: {
                        Text("buttonSecundary")
                            .padding(.leading, 20)
                        Spacer()
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                    })
                    .modifier(GenButtonSecundary())
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

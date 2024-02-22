//  GenButtonPrincipalExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenButtonPrincipalExample: View {
    
    let className = String(describing: GenButtonPrincipal.self)
    
    var body: some View {
        NavigationLink {
            
            
            VStack {
                
                CopyTextViewCustom(className: className)
                
                Spacer()
                Divider()
                
                VStack {
                    Text("Default: ")
                    
                    Button("Example buttonPrincipal", action: {})
                        .modifier(GenButtonPrincipal())
                    
                    Spacer()
                    
                    Text("Custom:")
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Button")
                            .modifier(GenTextStylePrincipal())
                    })
                    .modifier(GenButtonPrincipal(padding: 10, color: .red, radius: 10))
                    
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

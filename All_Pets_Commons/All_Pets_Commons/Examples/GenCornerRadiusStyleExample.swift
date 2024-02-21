//  GenCornerRadiusStyleExample.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castañeda on 21/02/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import AllPetsCommons

struct GenCornerRadiusStyleExample: View {
    
    let className = String(describing: GenCornerRadiusStyle.self)
    
    var body: some View {
        NavigationLink {
            
            ScrollView {
                
                VStack {
                    
                    CopyTextViewCustom(className: className, params: "radius: 10, corners: .allCorners")
                    
                    Spacer()
                    Divider()
                    
                    VStack {
                        Text("Custom:")
                        Image(systemName: "photo.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .modifier(GenCornerRadiusStyle(radius: 10, corners: .allCorners))
                        Spacer()
                    }
                    .font(.title)
                    
                    
                    Spacer()
                }
                .background(Color.backgroundPrincipal)
            }
            .navigationTitle(className)
        } label: {
            Text(className)
        }
    }
}

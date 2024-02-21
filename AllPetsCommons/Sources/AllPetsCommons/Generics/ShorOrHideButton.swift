//  ShorOrHideButton.swift
//  All_Pets
//
//  Created by Gerardo Bautista Castañeda on 11/08/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

public struct ShorOrHideButton: View {
    
    @Binding var showPassword: Bool
    
    public init(showPassword: Binding<Bool>) {
        self._showPassword = showPassword
    }
    
    public var body: some View {
        Button(action: {
            showPassword.toggle()
        }) {
            Image(systemName: showPassword ? "eye.fill" : "eye.slash.fill")
                .font(.system(size: 24))
        }
        .foregroundColor(.gray)
    }
}

#Preview {
    ShorOrHideButton(showPassword: .constant(false))
}

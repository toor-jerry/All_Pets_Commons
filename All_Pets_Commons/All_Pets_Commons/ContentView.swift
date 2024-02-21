//
//  ContentView.swift
//  All_Pets_Commons
//
//  Created by Gerardo Bautista Castaneda on 20/02/24.
//

import SwiftUI
import AllPetsCommons

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                GenAligmentViewExample()
                GenProfileImageExample()
                GenImageSizeExample()
                GenNavigationBarModifierExample()
                GenCornerRadiusStyleExample()
            }
        }
        .font(.title2)
        .padding()
    }
}

struct CopyTextViewCustom: View {
    
    var className: String
    var params: String? = nil
    
    var body: some View {
        CopyTextView(".modifier(\(className)\(params ?? "")")
    }
}

#Preview {
    ContentView()
}

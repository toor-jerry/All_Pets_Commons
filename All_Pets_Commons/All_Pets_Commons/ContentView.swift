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
                GenTextStylePrincipalExample()
                GenTextProfileBackgroundExample()
            }
        }
        .font(.title2)
        .padding()
    }
}

struct CopyTextViewCustom: View {
    
    var className: String
    var params: String? = nil
    
    init(className: String, params: String? = nil) {
        self.className = className
        if let params = params {
            self.params = "(\(params))"
        }
    }
    
    var body: some View {
        CopyTextView(".modifier(\(className)\(params ?? ""))")
    }
}

#Preview {
    ContentView()
}

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
            }
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}

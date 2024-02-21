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
        VStack {
            Loader()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(Color.bluePrincipal)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

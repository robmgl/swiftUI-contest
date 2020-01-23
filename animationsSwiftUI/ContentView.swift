//
//  ContentView.swift
//  animationsSwiftUI
//
//  Created by Rob Miguel on 1/20/20.
//  Copyright © 2020 Rob Miguel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var change = false // 2 - Data Change
    
    var body: some View {
        Button(action: {
            self.change.toggle() // 1 - Trigger
        }) {
            Text("Animate Me!")
                .font(.largeTitle)
                .scaleEffect(change ? 2: 1) // 3 - UI Change
                .animation(.default)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

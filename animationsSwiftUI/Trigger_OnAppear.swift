//
//  Trigger_OnAppear.swift
//  animationsSwiftUI
//
//  Created by Rob Miguel on 1/20/20.
//  Copyright © 2020 Rob Miguel. All rights reserved.
//

import SwiftUI

struct Trigger_OnAppear: View {
    @State private var expand = false // 2 - Data Change
    
    var body: some View {
        Image(systemName: "sun.max.fill")
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Circle()
                .fill(Color.green)
                .scaleEffect(expand ? 20 : 1) // 3 - UI Change
                .edgesIgnoringSafeArea(.all))
            .animation(.easeIn(duration: 4))
            .onAppear {
                self.expand.toggle() // 1 - Trigger
        }
    }
}

struct Trigger_OnAppear_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_OnAppear()
    }
}

//
//  triggerButton.swift
//  animationsSwiftUI
//
//  Created by Rob Miguel on 1/20/20.
//  Copyright © 2020 Rob Miguel. All rights reserved.
//

import SwiftUI

struct triggerButton: View {
    @State private var change = false // 2 - Data Change
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140, y: 0) // 3 - UI Change
                .animation(.default)
            
            Button("Change") {
                self.change.toggle()  // 1- Trigger
            }
        }
    }
}

struct triggerButton_Previews: PreviewProvider {
    static var previews: some View {
        triggerButton()
    }
}

//
//  Data_Stepper.swift
//  animationsSwiftUI
//
//  Created by Rob Miguel on 1/20/20.
//  Copyright © 2020 Rob Miguel. All rights reserved.
//

import SwiftUI

struct Data_Stepper: View {
    @State private var sliderValue: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                ForEach(0...20, id: \.self) { _ in
                    Circle()
                        .foregroundColor(self.sliderValue < 25 ? .black : .purple)
                        .opacity(0.4)
                        .frame(width: .random(in: 10...100),
                               height: .random(in: 10...100))
                        .position(x: .random(in: self.sliderValue...400),
                                  y: .random(in: self.sliderValue...800))
                        .animation(.spring(dampingFraction: 0.35))
                }
                
                ForEach(0...40, id: \.self) { _ in
                    Circle()
                        .foregroundColor(self.sliderValue < 25 ? .blue : .gray)
                        .opacity(0.4)
                        .frame(width: .random(in: 10...100),
                               height: .random(in: 10...100))
                        .position(x: .random(in: self.sliderValue...400),
                                  y: .random(in: self.sliderValue...800))
                        .animation(.spring(dampingFraction: 0.45))
                }
                
                ForEach(0...10, id: \.self) { _ in
                    Circle()
                        .foregroundColor(self.sliderValue < 25 ? .green : .orange)
                        .opacity(0.4)
                        .frame(width: .random(in: 10...100),
                               height: .random(in: 10...100))
                        .position(x: .random(in: self.sliderValue...400),
                                  y: .random(in: self.sliderValue...800))
                        .animation(.spring(dampingFraction: 0.95))
                }
                
                ForEach(0...120, id: \.self) { _ in
                    Circle()
                        .foregroundColor(.gray).opacity(0.4)
                        .frame(width: .random(in: 10...30),
                               height: .random(in: 10...30))
                        .position(x: .random(in: self.sliderValue...400),
                                  y: .random(in: self.sliderValue...800))
                        .animation(.spring(dampingFraction: 0.20))
                }
                                
                ForEach(0...130, id: \.self) { _ in
                    Circle()
                        .strokeBorder(lineWidth: self.sliderValue)
                        .foregroundColor(.red)
                        .opacity(0.4)
                        .frame(width: .random(in: 10...40),
                               height: .random(in: 10...40))
                        .position(x: .random(in: self.sliderValue...400),
                                  y: .random(in: self.sliderValue...800))
                        .animation(.spring(dampingFraction: 0.20))
                }
                
                ForEach(0...300, id: \.self) { _ in
                    Circle()
                        .foregroundColor(self.sliderValue > 25 ? .black : .white)
                        .opacity(0.4)
                        .frame(width: .random(in: 1...10),
                               height: .random(in: 1...10))
                        .position(x: .random(in: self.sliderValue...400),
                                  y: .random(in: self.sliderValue...800))
                        .animation(.spring(dampingFraction: 0.20))
                }
            }
            Slider(value: $sliderValue, in: 1...50)
            .padding()
        }
    }
}

struct Data_Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Data_Stepper()
    }
}

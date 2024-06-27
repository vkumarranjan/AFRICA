//
//  MotionAnnimationView.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 17/05/24.
//

import SwiftUI

struct MotionAnnimationView: View {
    
    @State var randomCircle = Int.random(in: 12...16)
    @State var isAnnimation = false
    // FUNC
    // 1. Random Coordinate
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    // 2. Random Size
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    // 3. Random Scale
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // 4. Random Speed
    
    func randomSpeed() -> CGFloat {
        return (Double.random(in: 0.025...1.0))
    }
    
    // 5. Random Delay
    
    func randomDelay() -> CGFloat {
        return (Double.random(in: 0...2))
    }
    
    var body: some View {
        GeometryReader { geomentry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnnimation ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geomentry.size.width),
                            y: randomCoordinate(max: geomentry.size.height)
                        )
                        .animation (
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                            
                        )
                        .onAppear(perform: {
                            isAnnimation = true
                        } )
                } // LOOP
             //   Text("Widht: \(Int(geomentry.size.width)) Height: \(Int(geomentry.size.height))")
            } // ZStack
            .drawingGroup()
        } //GeometryReader
       
    }
}

#Preview {
    MotionAnnimationView()
}


//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Drashti on 13/12/23.
//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: - Properties
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    //MARK: - Functions
    //1. Random Coordinate
    func randomeCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    //2. Random Size
    func randomeSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    //3. Random Scale
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //4. Random Speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    //5. Random Delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    //MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomeSize(), height: randomeSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomeCoordinate(max: geometry.size.width),
                            y: randomeCoordinate(max: geometry.size.height)
                        )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }//: Loop
            }//: ZStack
            .drawingGroup()
        }//: Geometry
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}

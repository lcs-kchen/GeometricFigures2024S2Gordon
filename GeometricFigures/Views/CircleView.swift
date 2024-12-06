//
//  CircleView.swift
//  GeometricFigures
//
//  Created by Russell Gordon on 2024-10-02.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: Stored properties
    @State var currentCircle = Circle(radius: 50)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            // Add an image
            Image("CircleDiagram")
                .resizable()
                .scaledToFit()
            
            // Label (describe what the slider is for)
            HStack {
                Text("Radius")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            
            // 1. INPUT
            // Slider control – to allow for user input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            // 3. OUTPUT
            // Label (show the current slider value)
            HStack {
                Text("\(currentCircle.radius.formatted()) units")
                Spacer()
            }
            
            // Label (show the diameter)
            ExtractedView(
                value: "Diameter",
                label: "\(currentCircle.diameter.formatted()) units"
            )
            
            // Label (show the area)
            ExtractedView(
                value: "Area",
                label: "\(currentCircle.area.formatted()) units"
            )
            
            
            // Label (show the circumference)
            ExtractedView(
                value: "Circumference",
                label: "\(currentCircle.circumference.formatted()) units"
            )
            
            
            #Preview {
                CircleView()
            }
            
            struct ExtractedView: View {
                
                //Mark: Stored properties
                let value: String
                let label: String
                
                //Mark: Computed properties
                var body: some View {
                    VStack {
                        HStack {
                            Text("Diameter")
                                .font(.headline)
                            Spacer()
                        }
                        .padding(.top)
                        .padding(.bottom, 5)
                        
                        HStack {
                            Text(value)
                            Spacer()
                        }
                        .padding(.bottom)
                    }
                }
            }
        }
    }
}

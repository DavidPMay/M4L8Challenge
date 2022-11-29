//
//  ContentView.swift
//  M4L8Challenge
//
//  Created by David May on 11/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            
            LazyVStack {
                ForEach(0..<50) {index in
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [.orange, .red]),
                                    center: UnitPoint(x: 0.5, y: 0.5),
                                    startRadius: 0,
                                    endRadius: 200
                                ))
                            .frame(width: 350, height:
                                    pow(1.1, CGFloat (index)))
                            .cornerRadius(20)
                        
                        Text("\(index)")
                    }
                }
                .padding(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Set up
//
//Start a new Xcode SwiftUI app project.
//
//
//
//Challenge
//
//Build a UI that uses a LazyVStack and ScrollView to display a number of rectangles.
//
//Use the index of the rectangle to affect its size, color, or both!
//
//Have fun trying out SwiftUI’s different tools for affecting the size and fill of shapes.
//
//Here’s an example where each rectangle’s height is
//
//
//
// and has fill
//
//

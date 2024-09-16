//
//  SwiftUIView123.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/15/24.
//

import SwiftUI

struct SwiftUIView123: View {
    var body: some View {

                ZStack {
                    // Background Layer
                    Color.blue
                        .edgesIgnoringSafeArea(.all)
                    
                    // Main Content Layer
                    Text("Hello, World!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    // Top Layer (Overlay)
                    Circle()
                        .stroke(Color.white, lineWidth: 5)
                        .frame(width: 200, height: 200)
                }
            }
        }

       



struct SwiftUIView123_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView123()
    }
}

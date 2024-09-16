//
//  SwiftUIView.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/14/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {

        
                VStack(spacing: 20) {  // Arranges views vertically
                    Text("First View")
                        .font(.title)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)

                    Text("Second View")
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)

                    Text("Third View")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding() // Adds padding around the stack
            }
        }

        
 
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

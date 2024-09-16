//
//  Adding Animations in SwiftUI.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/16/24.
//

import SwiftUI

struct Adding_Animations_in_SwiftUI: View {
    
    @State var isAnimated : Bool = false
    
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(Animation
                    .default
                    .repeatCount(5,autoreverses: true )
//                    .repeatForever(autoreverses: true)
                ){
                    isAnimated.toggle()

                    
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated == true ? 50 : 25)
                .fill(isAnimated == true ? Color.green.opacity(0.7) : Color.red.opacity(0.7))
                .frame(width: isAnimated == true ? 100 : 300,
                       height: isAnimated == true ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated == true ? 360 : 0))

                .offset(y: isAnimated == true ? 300 : 0)
                
               

            Spacer()
        }
    
    }
}

struct Adding_Animations_in_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Adding_Animations_in_SwiftUI()
    }
}

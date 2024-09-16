//
//  How to use Ternary Operators in SwiftUI.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/16/24.
//

import SwiftUI

struct How_to_use_Ternary_Operators_in_SwiftUI: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        VStack{
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
                
            }
            Text(isStartingState == true ? "STARTING STATE!!" : "ENDING STATE")

            
            RoundedRectangle(cornerRadius: isStartingState == true ? 25 : 0)
            //Using Ternary Operator.
                .fill(isStartingState == true ? Color.red.opacity(0.3) : Color.blue)
                .frame(width: isStartingState == true ? 200 : 50,
                       height: isStartingState == true ? 200 : 50)
                
            
           
            Spacer()

            
            
        }
    }
}

struct How_to_use_Ternary_Operators_in_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        How_to_use_Ternary_Operators_in_SwiftUI()
    }
}

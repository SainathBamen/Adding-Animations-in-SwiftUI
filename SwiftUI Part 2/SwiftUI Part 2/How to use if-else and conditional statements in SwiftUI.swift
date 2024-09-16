//
//  How to use if-else and conditional statements in SwiftUI.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/15/24.
//

import SwiftUI

struct How_to_use_if_else_and_conditional_statements_in_SwiftUI: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false

    var body: some View {
        
        
        VStack(spacing: 20){
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
                
            }
            Button("Rectangle Button:\(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            Button("isLoading :\(isLoading.description)") {
                isLoading.toggle()
                
            }
            if isLoading == true{
                ProgressView()
            }
            
        
            

            if showCircle == true{
                Circle()
                    .frame(width: 100, height: 100)
                
            }else if showRectangle == true{
                Rectangle()
                    .frame(width: 100, height: 100)
            }else{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 100)

                    
            }
            Spacer()

           
        }
        
    }
}

struct How_to_use_if_else_and_conditional_statements_in_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        How_to_use_if_else_and_conditional_statements_in_SwiftUI()
    }
}

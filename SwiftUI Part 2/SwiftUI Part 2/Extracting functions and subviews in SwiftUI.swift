//
//  Extracting functions and subviews in SwiftUI.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/15/24.
//

import SwiftUI

struct Extracting_functions_and_subviews_in_SwiftUI: View {
    
    @State var backgroundColor: Color = .pink.opacity(0.3)
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
             
            //contentLayer
            contentLayer2
        }
    }
    
//    var contentLayer: some View{
//    VStack{
//        Text("Title")
//            .font(.largeTitle)
//        Button {
//            buttonPressed()
//
//            Text("Title")
//                .font(.largeTitle)
//        } label: {
//            Text("Press me")
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .background(Color.black)
//                .cornerRadius(10)
//        }
//
//    }

//
//
//
//    }
    
    var contentLayer2: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
               
                Text("Title")
                    .font(.largeTitle)
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
        
    }
    
    func buttonPressed(){
        backgroundColor = .yellow.opacity(0.2)
        
        
    }
}

struct Extracting_functions_and_subviews_in_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Extracting_functions_and_subviews_in_SwiftUI()
    }
}

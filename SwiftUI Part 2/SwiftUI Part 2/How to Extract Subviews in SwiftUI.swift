//
//  How to Extract Subviews in SwiftUI.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/15/24.
//

import SwiftUI

struct How_to_Extract_Subviews_in_SwiftUI: View {
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            //First Method two to Extract Subviews.
            contentLayer
            
            // Second Method to Extract Subviews.
//            HStack{
//                ExtractedView(count: 21, color: .blue, title: "Sai")
//                ExtractedView(count: 31, color: .yellow, title: "Ais")
//                ExtractedView(count: 41, color: .cyan, title: "Ias")
            
//
//            }
            
            
        }
        
    }
    
    var contentLayer: some View{
        HStack{
            ExtractedView(count: 21, color: .blue, title: "Sai")
            ExtractedView(count: 31, color: .yellow, title: "Ais")
            ExtractedView(count: 41, color: .cyan, title: "Ias")
            
        }
    }

    
    
        
}

struct How_to_Extract_Subviews_in_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        How_to_Extract_Subviews_in_SwiftUI()
    }
}

struct ExtractedView: View {
    let count: Int
    let color: Color
    let title: String
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
            
                .padding()
                .background(color)
                .cornerRadius(10)
            
            
        }
    }
}

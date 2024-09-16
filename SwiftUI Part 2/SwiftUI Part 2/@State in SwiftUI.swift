//
//  @State in SwiftUI.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/14/24.
//

import SwiftUI

struct _State_in_SwiftUI: View {
    
    @State var backgroundColor: Color = Color.orange
    @State var myTitle: String = "My Title"
    @State var count: Int = 0

    
    var body: some View {
        
        
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                Text(myTitle)
                Text("Title1")
                
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                
                HStack(spacing: 20){
                    Button("Button1"){
                        backgroundColor = .gray
                        myTitle = "Button 1 pressed"
                        count = count + 1
                        
                        
                        
                    }
                    Button("Button2"){
                        myTitle = "Button 2 pressed"
                        backgroundColor = .blue
                        count = count - 1
                        
                        
                    }
                    
                }
                
                
            }
            .foregroundColor(Color(uiColor: .white))
        }
        
    }
}

struct _State_in_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        _State_in_SwiftUI()
    }
}

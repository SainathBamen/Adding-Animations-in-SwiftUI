//
//  Binding In SwiftUI.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/15/24.
//

import SwiftUI

struct Binding_In_SwiftUI: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        
        ZStack{
            backgroundColor.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(Color.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }

            
            

        }
    }
}



struct ButtonView: View{
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    var body: some View{
        Button {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "New Title!!!!!"
            
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }


    }
}





struct Binding_In_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Binding_In_SwiftUI()
    }
}

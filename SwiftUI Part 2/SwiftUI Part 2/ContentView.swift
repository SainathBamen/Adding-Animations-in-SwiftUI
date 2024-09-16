//
//  ContentView.swift
//  SwiftUI Part 2
//
//  Created by mac on 9/14/24.
//

import SwiftUI

struct ContentView: View {
    @State var title: String = "This is my title"
    @State var title2: String = "kjkskskjskj"
    
    

    var body: some View {
        VStack{
            Text(title)
                .padding(20)
            Text(title2)
                .padding(20)
            
            Button("Press me!"){
                self.title = "Button #1 Was Pressed"
            }
            .accentColor(Color.red)
            .padding(20)
            
            Button {
                self.title = "Button #2 was Pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue
                        .cornerRadius(10)
                        .shadow(radius: 10)
                                
                    )
                    
            }
            
       
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.orange)
                    )
            }
            
            Button {
                self.title2 = "I'm 4th number button"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 4.0)
                    )
            }
            
          
            

        }
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

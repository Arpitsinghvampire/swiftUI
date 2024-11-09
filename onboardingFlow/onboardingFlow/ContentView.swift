//
//  ContentView.swift
//  onboardingFlow
//
//  Created by Arpit Singh on 08/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()
                .font(.largeTitle)
            ZStack{
                //now lets add a rounded rectangle
                RoundedRectangle(cornerRadius:10)
                    .frame(width:300,height:150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.largeTitle)
            }
            
            Text("WELCOME TO MY APP")
                .font(.title)
                .fontWeight(.bold)
                .border(Color.red,width: 1)
            
            
            Text("DESCRIPTION TEXT")
                .font(.title2)
                .border(Color.black,width:1)
            
            Button(action: {
                print("THE BUTTON WAS CLICKED")
            }){
                Text("CLICK HERE")
                    .padding()
                    .font(.title3)
                    .foregroundStyle(.tint)
                    .background(Color.red)
                    .cornerRadius(10)
                
            }
            
            
                .padding()
                .border(Color.green,width:1)
                .padding()
                .border(Color.purple,width:1)
                
        }
    }
}

#Preview {
    ContentView()
}


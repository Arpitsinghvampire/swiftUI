//
//  ContentView.swift
//  chatprototype
//
//  Created by Arpit Singh on 07/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyView()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()
            Text("THIS IS THE FIRST TIME I AM MAKING AN APP!")
                .background(Color.yellow,in:RoundedRectangle(cornerRadius:8))
                .shadow(color: .red, radius: 20, x: 0, y: 0)
            
            Image(systemName: "sun.max.fill")
                .foregroundStyle(.tint)
            
            Image(systemName:  "moon.stars.fill")
                .foregroundStyle(.tint)

            
            Image(systemName: "cloud.fill")
                .foregroundStyle(.tint)
            
                .padding()
            Text("THIS IS THE FIRST TIME I AM MAKING AN APP1!")
                .background(Color.yellow,in:RoundedRectangle(cornerRadius:8))
                .shadow(color: .red, radius: 20, x: 0, y: 0)
                .padding()
            
            
            Button("Select Me")
            {
                print("BUTTON SELECTED")
            }
            .background(
                Color.yellow,in:RoundedRectangle(cornerRadius:10))
            
        }
        .padding()
    }
}
// this one is nothing but tells the xcode to show how the code looks like once the above is executed .

#Preview {
    ContentView()
}

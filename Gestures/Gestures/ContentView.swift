//
//  ContentView.swift
//  Gestures
//
//  Created by Arpit Singh on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("TAP ME FOR RESERVATION")
                .font(.title)
                .foregroundStyle(Color.white)
                .background(Color.black)
            
                
            
            //now lets add the tap gesture
                .onTapGesture{
                    print("TEXT WAS TAPPED")
                }
            
            Text("LONG PRESS TO CHANGE RSERVATION")
                .font(.title)
                .foregroundStyle(Color.white)
                .background(Color.black)
            
            
                .onLongPressGesture{
                    print("USER WANTS TO CHANGE RESERVATION DATE")
                    
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

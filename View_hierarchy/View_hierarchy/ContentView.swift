//
//  ContentView.swift
//  View_hierarchy
//
//  Created by Arpit Singh on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var name : String = ""
    @State var greeting: String = ""
    var body: some View {
        VStack {
            TextField("ENTER YOUR NAME",text: $name,prompt:Text("ENTER NAME"))
            
            HStack{
                //used for placing the buttons horizontally
            Button("SUBMIT",action:
                    {
                if (!name.isEmpty)
                {
                    greeting = "HELLO \(name) JOIN THE CLUB"
                }
                
            })
                if !greeting.isEmpty
                {
                    Text(greeting)
                }
                
        
                
                Button(role: .cancel) {}
                label: {
                    HStack {
                        Image(systemName: "xmark.circle.fill")
                        Text("CANCEL")
                    }
                }

                
            .padding()
            
          
            
        }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

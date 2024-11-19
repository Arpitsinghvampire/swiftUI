//
//  ContentView.swift
//  color_matching
//
//  Created by Arpit Singh on 19/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var red_color_random: Double = Double.random(in:0...255)
    @State var green_color_random: Double = Double.random(in:0...255)
    @State var blue_color_random : Double = Double.random(in:0...255)
    
    @State var guessed_red : Double = 0.0
    @State var guessed_blue : Double = 0.0
    @State var guessed_green : Double = 0.0
    
    @State var showAlert : Bool = false
    
    var body: some View {
        NavigationView{
            

            VStack {
                HStack{
                    
                    
                    RoundedRectangle(cornerRadius:10)
                    
                        .fill(
                            Color(
                                red:red_color_random/255.0,green:green_color_random/255.0,blue:blue_color_random/255.0
                            )
                        )
                    
                        .frame(width:200,height:300)
                    
                    RoundedRectangle(cornerRadius:10)
                        .fill(
                            Color(
                                red:guessed_red/255.0,
                                green:guessed_green/255.0,
                                blue:guessed_blue/255.0
                            )
                        )
                        .frame(width:200,height:300)
                    
                    
                    
                    
                    
                }
                .frame(width:500,height:400)
                .background(Color.white)
                
                HStack
                {
                    Text("RANDOM COLOR")
                    Spacer()
                    Text("GUESSED COLOR")
                }
                //now lets add  the slider
                Text("RED COLOR")
                
                Slider(value: $guessed_red, in: 0...255, step: 1) {}
                Text("RED COMPONENT: \(String(format: "%.1f", guessed_red))")
                
                Spacer()
                
                
                Text("GREEN COLOR")
                Slider(value:$guessed_green,in:0...255,step:1){}
                Text("RED COMPONENT: \(String(format: "%.1f", guessed_green))")
                
                Spacer()
                
                Text("BLUE COLOR")
                Slider(value:$guessed_blue,in:0...255,step:1){}
                Text("RED COMPONENT: \(String(format: "%.1f", guessed_blue))")
                
                Spacer()
                
                
                
                var  complement_score = abs(guessed_red - red_color_random) + abs(guessed_green - green_color_random) + abs(guessed_blue-blue_color_random)
                
                var score = (1-complement_score/(255*3))*100
                
                
                
                Button("SUBMIT",action:{
                    
                    showAlert = true
                    
                })
                
                
                .alert("SUBMISSION SUCCESSFUL", isPresented: $showAlert)
                {
                    Button("OK", role: .cancel) {}
                } message: {
                    Text("YOUR SCORE IS \(score) %")
                }
                
               
                
                
            }
            .padding()
            .navigationTitle("COLOR GUESSER APP")
            .navigationBarTitleDisplayMode(.inline)
            .fontWeight(.bold)
            
            

        }
        .environment(\.colorScheme, .dark)
    }
        
}

#Preview {
    ContentView()
}

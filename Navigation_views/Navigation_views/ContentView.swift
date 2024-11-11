//
//  ContentView.swift
//  Navigation_views
//
//  Created by Arpit Singh on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var number_of_customers: Int = 0
    var body: some View {
        NavigationView
        {
            VStack {
                /*
                 Text("Hello, world!")
                 Stepper("Number of Customers", value: Binding(
                 get: { number_of_customers },
                 set: { newValue in
                 number_of_customers = newValue
                 // Custom logic here
                 print("Number of customers updated to \(newValue)")
                 }
                 ), in: 1...10)
                 */
               
                Text("CHOOSE THE COLOR ")
                    .font(.title)
                NavigationLink(destination: Color.green)
                {
                    Text("green color")
                        .font(.title)
                        .foregroundColor(.green)
                }
                NavigationLink(destination:Color.yellow)
                {
                    Text("yellow color")
                        .foregroundColor(.yellow)
                        .font(.title)
                }
                
                
                
                TabView{
                    Text("MAKE A RESERVATION")
                        .tabItem({Label("RESERVATION",systemImage: "person.crop.circle.badge.plus")})
                    Text("CHOOSE RESERVATION TIMING")
                    
                        .tabItem({Label("TIMING",systemImage: "clock.fill")})
                    Text("CONTACT US")
                        .tabItem({Label("CONTACT US",systemImage: "phone.fill")})
                    
                }
                
                
                
                
            }
            
            .padding()
            .navigationTitle("LITTLE LEMON APP ")
        }
    }
}

#Preview {
    ContentView()
}

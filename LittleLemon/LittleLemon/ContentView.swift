//
//  ContentView.swift
//  LittleLemon
//
//  Created by Arpit Singh on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var inputName: String = ""
    @State var formname : String = ""
    @State var username : String = ""
    @State var password : String = "" //these are the default values
    
    var body: some View {
        
        VStack {
            TextField ("ENTER YOUR NAME ", text: $inputName)
            TextField("ENTER THE NAME IN THE FORM",text: $formname)
                .onSubmit({
                    print("\(inputName)")
                })

            /*
            Text("WELCOME TO THE LITTLE LEMON APP")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
          
            Label("LIGHTNING SPEED DELIVERY",systemImage : "bolt.fill")
             */
                
            Form {
                Text("Enter the username")
                TextField(text: $username, prompt: Text("Required")) {
                    Text("Username")
                }
                .onSubmit({
                    print("username \(username)")
                })
                
                Text("Enter the password")
                SecureField(text: $password, prompt: Text("Required")) {
                    Text("Password")
                        .onSubmit({
                            print("password submitted")
                        })
                }
            }
                
        }
        .padding()
        .navigationTitle("LITTLE LEMON")
        .background(Color.yellow)

        
    }
}


#Preview {
    ContentView()
}

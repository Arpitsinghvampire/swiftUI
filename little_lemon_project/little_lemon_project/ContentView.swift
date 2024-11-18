//
//  ContentView.swift
//  little_lemon_project
//
//  Created by Arpit Singh on 18/11/24.
//

import SwiftUI

struct ParentView: View {
    @State var darkmode : Bool = false //default model is off
    @State var username : String = ""
    @State var Age : Int = 0
    @State var password : String = ""
    @State var SliderValue : Double = 0.0
    @State var showalert : Bool = false
    @State var navigateToNext : Bool = false
    var body: some View {
        ZStack{
            Color.yellow
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment:.center) {
                
                Text("LITTLE LEMON APP")
                    .font(.title)
                    .fontWeight(.bold)
                
                
                
                //now lets create  a form where the user enters the username and the password
                Form{
                    Section(header: Text("PERSONAL INFORMATION"))
                    {
                        TextField("ENTER YOUR NAME",text:$username).textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        //here lets add a stepper to take the input
                        Stepper(value : $Age, in:0...100)
                        {
                            Text("YOUR AGE IS \(Age)")
                        }
                        
                        
                        Text("YOUR NEW AGE IS \(SliderValue)")
                        
                        Slider(value: $SliderValue,in:0...100,step:1 )
                        {
                            Text("YOUR NEW AGE IS \(SliderValue)")
                        }
                    }
                    
                    Section(header: Text("ENTER PASSWORD"))
                    {
                        SecureField("ENTER YOUR PASSWORD",text:$password).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                
                
    
                
                Button("SUBMIT BUTTON",action:{
                    if password.isEmpty || username.isEmpty || Age<5
                    {
                        showalert = true
                    }
                    else
                    {
                        navigateToNext = true
                    }
                })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                
                
                .alert(isPresented:$showalert)
                {
                    Alert(
                        title: Text("INVALID ENTRY"),
                        
                        dismissButton:.default(Text("OK"))
                    )
                    
                    
                }
                
               
                // Hidden NavigationLink that triggers navigation when navigateToNextPage is true
               
                
              
                // now if  the alert is not prsented then we would need to go to the next view
            
                
                
                
            }
            .padding()
            .background(darkmode ? Color.black :Color.yellow)
            .foregroundStyle(darkmode ? Color.white:Color.black)
            .frame(width:400,height:450)
        }
        
        
        
    }
}
struct SecondView: View {
    var userName: String // Variable received from the ParentView
    var body: some View {
        ZStack{
            Color.yellow
                .navigationTitle("CHOOSE FOOD ITEMS")
                .navigationBarTitleDisplayMode(.inline)
            VStack {
                Text("Hello, \(userName)") // Display the userName passed from the Parent
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ParentView() // Load the ParentView
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone Se") // Change to your desired device name
    }
}


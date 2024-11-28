//
//  ContentView.swift
//  state_and_binding_variables
//
//  Created by Arpit Singh on 28/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var firstname1 : String = ""
    @State var secondname1 : String = ""
    @State var password : String = ""
    @State var isvalid : Bool = true
    
    var body: some View {
        NavigationStack{
            VStack {
                
                ZStack{
                    
                    Text("LOGIN PAGE")
                    Form{
                        
                        
                        Section(header:Text("PERSONAL DETAILS"))
                        {
                            Text("ENTER THE FIRSTNAME")
                            
                            TextField("Enter Username", text: $firstname1)
                            
                            Text("ENTER THE SECOND NAME")
                            TextField("Enter the Second name",text:$secondname1)
                            
                        }
                        
                        Section(header:Text("PASSWORD DETAILS"))
                        {
                            Text("ENTER THE PASSWORD")
                            
                            SecureField("Enter the password",text:$password)
                        }
                        
                        
                        
                    }
                    
            
                    
                }
                SecondView(firstname:self.$firstname1 , secondname: self.$secondname1,showAlert:self.$isvalid)
            }
            .navigationTitle("LOGIN PAGE")
        }
       
        
        .padding()
    }
}

struct SecondView: View
{
    @Binding var firstname : String
    @Binding var  secondname : String
    @Binding var showAlert : Bool
    var body: some View
    {
        NavigationStack{
            
       
        Button(action:{
            
            if !firstname.isEmpty && !secondname.isEmpty
            {
                showAlert = false
            }
         
        })
        {
            NavigationLink(destination:thirdView())
            {
                Text("CLICK ME")
                    .padding()
                    .font(.largeTitle)
            }
            
            
        }
        
        if showAlert == false
            
        {
            Text("WELCOME \(firstname) \(secondname)")
        }
            
          
        }
    }
}

#Preview {
    ContentView()
}

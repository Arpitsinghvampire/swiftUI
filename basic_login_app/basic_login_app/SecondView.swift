//
//  SecondView.swift
//  basic_login_app
//
//  Created by Arpit Singh on 23/11/24.
//

import SwiftUI

struct SecondView: View {
    var firstname : String = ""
    
    var body: some View {
        
        
        
        TabView
        {
           Setting_view()
                .tabItem{
                    Label("Settings",systemImage:"gearshape.fill")
                }
                .foregroundColor(.red)
                .background(Color.red)
            
            
           Account_view()
                .tabItem{
                    Label("Account",systemImage:"person.crop.circle.fill")
                }
            
            .badge(1)
        }
    }
}
#Preview
{
    SecondView()
}


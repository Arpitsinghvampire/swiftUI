//
//  Setting_view.swift
//  basic_login_app
//
//  Created by Arpit Singh on 23/11/24.
//

import SwiftUI

struct Setting_view: View {
    @State var switchOn : Bool = false
    @State var notificationOn : Bool = false
    
    var body: some View {
        ZStack{
            if switchOn
            {
                Color.black.edgesIgnoringSafeArea(.all)
                    .animation(.easeInOut,value:switchOn)
                    .foregroundStyle(switchOn ? Color.white:Color.black)
                
            }
            
            VStack{
                
                Toggle("DARK MODE",isOn: $switchOn)
                
                
                Toggle("ALLOW NOTIFICATIONS",isOn:$notificationOn)
            }
            
            .navigationBarTitle("Settings")
            .background(switchOn ? Color.black:Color.white)
            .foregroundStyle(switchOn ? Color.white:Color.black)
            .edgesIgnoringSafeArea(.all)
            .animation(.easeInOut, value: switchOn) // Smooth transition on toggle change
            
        }
        
    }
}

#Preview {
    Setting_view()
}

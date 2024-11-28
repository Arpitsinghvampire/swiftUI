//
//  thirdView.swift
//  state_and_binding_variables
//
//  Created by Arpit Singh on 28/11/24.
//

import SwiftUI

struct thirdView: View {
    
    var body: some View {
        NavigationStack
        {
            ZStack
            {
                Color.yellow
                
                Text("THIS IS THE SECOND PAGE")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
            }
            .navigationTitle("SECOND VIEW")
        }
        
        
    }
}

#Preview {
    thirdView()
}

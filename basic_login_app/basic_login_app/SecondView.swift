//
//  SecondView.swift
//  basic_login_app
//
//  Created by Arpit Singh on 23/11/24.
//

import SwiftUI

struct SecondView: View {
    @Binding var firstname : String
    
    var body: some View {
        
        Text("Hello \(firstname)")
    }
}


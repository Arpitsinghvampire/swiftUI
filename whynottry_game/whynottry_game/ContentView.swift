//
//  ContentView.swift
//  whynottry_game
//
//  Created by Arpit Singh on 26/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var id = 1
    @State private var selectedGame = "Archery"
    @State private var selectedColor = "red"
    
    var games = ["Archery", "Baseball", "Bowling", "Boxing", "Basketball", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors = ["red", "green", "blue", "magenta", "purple", "pink", "black"]
    
    func colorForName(_ name: String) -> Color {
        switch name.lowercased() {
        case "red": return .red
        case "green": return .green
        case "blue": return .blue
        case "magenta": return .pink.opacity(0.6) // Approximation for magenta
        case "purple": return .purple
        case "pink": return .pink
        case "black": return .black
        default: return .gray // Fallback for unknown colors
        }
    }
    
    var body: some View {
        VStack {
            Text("TRY THE SPORT")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Circle and image will have a slide transition
            Circle()
                .fill(colorForName(selectedColor))
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selectedGame.lowercased())")
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                )
                .transition(.slide)
                .id(id)
            
            // Display the selected sport
            Text("\(selectedGame.uppercased())")
                .fontWeight(.bold)
                .font(.largeTitle)
                .transition(.slide)
                .id(id)
            
            
            Button("Try Again") {
                withAnimation(.easeInOut(duration: 0.3)) {
                    // Randomly select new game and color
                    selectedGame = games.randomElement() ?? "Archery"
                    selectedColor = colors.randomElement() ?? "red"
                    id += 1 // Increment ID to trigger view update
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            .background(colorForName(selectedColor))
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

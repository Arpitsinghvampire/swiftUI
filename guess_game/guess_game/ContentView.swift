//
//  ContentView.swift
//  guess_game
//
//  Created by Arpit Singh on 27/11/24.
//

import SwiftUI

struct ContentView: View {
    let games = ["Archery", "Baseball", "Bowling", "Boxing", "Basketball", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash", "Swimming", "Tennis", "Volleyball",  "Yoga", "Zumba", "Ping Pong", "Snooker", "Table Tennis", "Trivia", "Wrestling","Chess","Car"]
    
    @State private var id :Int = 0
    
    @State private var score : Int = 0

    var body: some View {
        VStack {
            //lets create the circle first
            let chosen_index = Int.random(in:0..<games.count)
            
           let selectedGame = games[chosen_index]
            
            let  returned_list = randomGames(games:games,selectedGame:selectedGame)
            
            
            Text("GUESS THE GAME")
                .fontWeight(.bold)
                .font(.largeTitle)
            
            
            Circle()
                .fill(Color.blue)
                .overlay(
                    Image(systemName: "figure.\(selectedGame.lowercased())")
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                )
                .transition(.slide)
                .id(id)
                
        
          
            HStack{
                Button(action:{
                    let selectedOption = returned_list[0]
                    handleSelection(selectedOption,selectedGame)
                })
                {
                    Text(returned_list[0])
                                      .padding()
                                      .frame(maxWidth: .infinity)
                                      .background(Color.blue)
                                      .foregroundColor(.white)
                                      .cornerRadius(10)
                }
                
               
                
                Button(action:{
                    let selectedOption = returned_list[1]
                    handleSelection(selectedOption,selectedGame)
                })
                {
                    Text(returned_list[1])
                                      .padding()
                                      .frame(maxWidth: .infinity)
                                      .background(Color.blue)
                                      .foregroundColor(.white)
                                      .cornerRadius(10)
                }
            }
            .transition(.slide)
            .id(id)
            
            
            
            HStack{
                
                Button(action:{
                    let selectedOption = returned_list[2]
                    handleSelection(selectedOption,selectedGame)
                })
                {
                    Text(returned_list[2])
                                      .padding()
                                      .frame(maxWidth: .infinity)
                                      .background(Color.blue)
                                      .foregroundColor(.white)
                                      .cornerRadius(10)
                }
                
                Button(action:{
                    let selectedOption = returned_list[3]
                    handleSelection(selectedOption,selectedGame)
                })
                {
                    Text(returned_list[3])
                                      .padding()
                                      .frame(maxWidth: .infinity)
                                      .background(Color.blue)
                                      .foregroundColor(.white)
                                      .cornerRadius(10)
                }
                
            }
            .transition(.slide)
            .id(id)
            //Button
            
            
            HStack{
                Spacer()
                
                //here we write the enter button
                Button(action:{
                    withAnimation(.easeInOut(duration: 0.3)) {
                        id += 1
                    }
                })
                {
                    Text(" NEXT ")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .background(Color.green)
                .foregroundColor(.white)
                .padding()
                
                Spacer()
                
                
                
                
                
                //show score in the left side outer most ledt most way
                Text("Score: \(score)")
                
            }
            
            Button(action:{
                reset_button()
            })
            {
                Text("RESET BUTTON")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .background(Color.green)
                    .foregroundStyle(.white)
                
            }
            
            
            
        }
        .padding()
        
    }

        
    
    func reset_button()
    {
        score = 0
    }
        // Handle user selection
    func handleSelection(_ choice: String ,_ selectedGame:String) {
            if choice == selectedGame {
                score += 1
            } else {
                score -= 10
            }
        
      
        }
    
    
    
    func randomGames(games:[String],selectedGame:String) -> [String]
    {
        var returned_list: Array<String> = []
        returned_list.append(selectedGame)
        while(returned_list.count<4)
        {
            let  guessed_index = Int.random(in:0..<games.count)
            
            if !returned_list.contains(games[guessed_index])
            {
                returned_list.append(games[guessed_index])
            }
        }
        
        return returned_list.shuffled()
        
        
        
    }
    
    
}

#Preview {
    ContentView()
}

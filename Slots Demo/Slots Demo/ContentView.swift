//
//  ContentView.swift
//  Slots Demo
//
//  Created by 김다빈 on 2023/03/27.
//

import SwiftUI

struct ContentView: View {
    
    private var symbols = ["apple","star", "cherry"]
    @State private var numbers = [1, 2, 0]
    @State private var credits = 1000
    private var betAmount = 5
    
    
    var body: some View {
        ZStack{
        
            // Background
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 400,height: 800)
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
              
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255)).rotationEffect(Angle(degrees: 45)).edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                
                
                //Title
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                // Credits counter
                Text("Credits: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                // Cards
                HStack{
                    Spacer()
                    
                    Image(symbols[numbers[0]])
                        .resizable().aspectRatio( contentMode: .fit).background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[1]])
                        .resizable().aspectRatio( contentMode: .fit).background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[2]])
                        .resizable().aspectRatio( contentMode: .fit).background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Spacer()
                }
                
                Spacer()
                //Button
                Button {
                    
                    // Change the images
                    self.numbers[0] = Int.random(in: 0...self.symbols.count-1)
                    self.numbers[1] = Int.random(in: 0...self.symbols.count-1)
                    self.numbers[2] = Int.random(in: 0...self.symbols.count-1)
                    
                    //Check winnings
                    if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2]{
                        
                        //won
                        self.credits += betAmount * 10
                    }
                    else {
                        self.credits -= self.betAmount
                    }
                        
                      
                        
                } label: {
                    Text("Spin")
                        .bold()
                        .padding(.all,10)
                        .padding([.leading, .trailing], 30)
                        .foregroundColor(.white)
                        .background(.pink)
                        .cornerRadius(20)
                    
                }
                Spacer()

            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

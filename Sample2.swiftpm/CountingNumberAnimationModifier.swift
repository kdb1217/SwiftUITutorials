//
//  CountingNumberAnimationModifier.swift
//  Sample2
//
//  Created by 김다빈 on 2023/03/28.
//

import SwiftUI

struct CountungNumberAnimationModifier: AnimatableModifier {
    
    var number: CGFloat = 0
    var emojiNum: CGFloat = 0
    var emoji: [[(String, Color)]] = [
           [("👩🏻‍💻", .blue), ("🐷", .green), ("🐱", .gray), ("✉️", .yellow), ("🤑", .black), ("😯", .red)],
            [("😯", .red), ("👩🏻‍💻", .blue), ("🐷", .green), ("🐱", .gray), ("✉️", .yellow), ("🤑", .black)],
           [("🐷", .green), ("🐱", .gray), ("✉️", .yellow), ("🤑", .black), ("😯", .red), ("👩🏻‍💻", .blue)],
           [("✉️", .yellow), ("🤑", .black), ("😯", .red), ("👩🏻‍💻", .blue), ("🐷", .green), ("🐱", .gray)],
           [("🤑", .black), ("😯", .red), ("👩🏻‍💻", .blue), ("🐷", .green), ("🐱", .gray), ("✉️", .yellow)],
            [("🐱", .gray), ("✉️", .yellow), ("🤑", .black), ("😯", .red), ("👩🏻‍💻", .blue), ("🐷", .green)],
           
       ]
    
    var animatableData: CGFloat {
        get { number }
        set { number = newValue}
    }
    
    func body(content: Content) -> some View {
        content.overlay(NumberLabelView(number: number, emoji: emoji[Int(emojiNum)]))
        
    }
    
    
    // 숫자 라벨 뷰
    struct NumberLabelView : View {
          let number : CGFloat
          let emoji: [(String, Color)]
          
          var body: some View {
              VStack{
                  Text("\(emoji[(Int(number)<=0 ? 0 : Int(number)) % 6].0)")
                      .font(.largeTitle)
                      .fontWeight(.black)
              }
                      
          }
          
      }
}

//
//  CountungNumberAnimationModifier.swift
//  Sample1
//
//  Created by 김다빈 on 2023/03/27.
//

import SwiftUI

struct CountungNumberAnimationModifier: AnimatableModifier {
    
    var number: CGFloat = 0
    var emojiNum: CGFloat = 0
    var emoji: [[(String,String)]] = [[("😒","Tyler"),("😨","Helia"),("😰","Clair"),("👻","Rash"),("😳","GoGins"),("🤩","Zett")],
                             [("😰","Helia"),("😨","Clair"),("😒","Rash"),("🤩","GoGins"),("👻","Zett"),("😳","Tyler")],
                             [("😰","Clair"),("🤩","Rash"),("👻","GoGins"),("😳","Zett"),("😒","Tyler"),("😨","Helia")],
                             [("🤩","Rash"),("😰","GoGins"),("😨","Zett"),("😒","Tyler"),("😳","Helia"),("👻","Clair")],
                             [("😰","GoGins"),("🤩","Zett"),("👻","Tyler"),("😳","Helia"),("😒","Clair"),("😨","Rash")],
                             [("😰","Zett"),("🤩","Tyler"),("👻","Helia"),("😳","Clair"),("😒","Rash"),("😨","GoGins")],]
    
    var animatableData: CGFloat {
        get { number }
        set { number = newValue}
    }
    
    func body(content: Content) -> some View {
        content.overlay(NumberLabelView(number: number,emoji: emoji[Int(emojiNum)] ))
        
    }
    
    
    // 숫자 라벨 뷰
    struct NumberLabelView : View {
        @State private var offsetY: CGFloat = 0
        let number : CGFloat
        let emoji: [(String,String)]
        var body: some View{
            VStack{
                Spacer()
                Text("\(emoji[(Int(number)<=0 ? 0 : Int(number)) % 6].0)")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .offset(y:self.offsetY)
                   
                Spacer()
                Text("\(emoji[(Int(number)<=0 ? 0 : Int(number)) % 6].1)")
                    .font(.system(size: 10))
                    .fontWeight(.black)
                    .transition(.opacity)
            }
            .onAppear{
                withAnimation(Animation.easeInOut(duration: 0.7).repeatForever(autoreverses:  false)){
                    self.offsetY = -20
                    }
                }
         
        }
    }
}

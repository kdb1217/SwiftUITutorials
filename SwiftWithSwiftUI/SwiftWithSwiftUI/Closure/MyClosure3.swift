//
//  MyClosure3.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/24.
//

import SwiftUI

struct MyClosure3: View {
    
    @State var result: String = "not yet"
    
    var body: some View {
        
        VStack{
            Button {
                result = calculateNumber(3, 4, calculate: {first, second in return first * second
                    
                })
            } label: {
                Text("Calculate")
            }
            Text(result)
            
        }
    }
    func calculateNumber(_ first: Int, _ second: Int, calculate: (Int, Int) -> Int) -> String{
        return String(calculate(first,second))
    }
    
    func sumTwoNumber(_ first: Int, _ second: Int) -> String {
        return String(first + second)
    }
    func minusTwoNumber(_ first: Int, _ second: Int) -> String {
        return String(first - second)
    }
    func multipleTwoNumber(_ first: Int, _ second: Int) -> String {
        return String(first * second)
    }
}

struct MyClosure3_Previews: PreviewProvider {
    static var previews: some View {
        MyClosure3()
    }
}

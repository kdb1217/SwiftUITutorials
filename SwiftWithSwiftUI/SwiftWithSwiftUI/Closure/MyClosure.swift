//
//  MyClosure.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct MyClosure: View {
    let myFirstClousre: () -> Void  = { print("Hi closure") }
    // 코드를 넘겨주긴 넘겨주는 한번만 쓰기위해 클로저를 쓴다.
    
    func sayHi() -> Void {
        print("Hi function")
    }
    
    func sayHi2(action: ()->()) -> Void {
        print("Hi2 function")
    }
    var body: some View {
        VStack{
            Button {
                sayHi()
            } label: {
                Text("Function Button")
            }
            
            Button {
                sayHi2 {
                    print("hi")
                }
            } label: {
                Text("Function2 Button")
            }
            
            Button {
                print("test")
            } label: {
                Text("Button")
            }

            
            Button(action: {print("Hi closure")}) {
            Text("Closure Button")
            }
            
        }
            

        Text("Test")
    }
}

struct MyClosure_Previews: PreviewProvider {
    static var previews: some View {
        MyClosure()
    }
}

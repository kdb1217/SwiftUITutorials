//
//  MyFunction.swift
//  MyFirstApp
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct MyFunction: View {
    @State var myMind: String = "nothing"
    @State var isChangedMind: Bool = false
    
    var body: some View {
        VStack{
            Text(myMind)
            Button {
                isChangedMind.toggle()
                
                myMind = getMind(with: isChangedMind)
            } label: {
                Text("Change my mind!")
            }
            
            Button {
                isChangedMind.toggle()
                getMind(with: isChangedMind)
            } label: {
                Text("집에 가고 싶어요")
            }
        }
        
    }
    func getMind(with isChangedMind: Bool) -> String {
        if isChangedMind {
            return "always open"
        } else{
            return "but closed"
        }
    }
}

struct MyFunction_Previews: PreviewProvider {
    static var previews: some View {
        MyFunction()
    }
}

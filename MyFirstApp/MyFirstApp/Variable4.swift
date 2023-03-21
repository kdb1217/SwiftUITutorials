//
//  Variable4.swift
//  MyFirstApp
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct Variable4: View {
    let names: [String] = ["Dabin","Leeo","Olivia"]
    let engkrDictionary: [String:String] = ["Apple":"사과","Banana":"바나나","Coconut":"코코넛"]
    let houseAnimals: Set = ["🐶","🐱","🐦","🐦"]
    let fareAnimals: Set = ["🐮","🐔","🐑","🐶","🐱"]
    var body: some View {
        // Array, Dictionary, Set
        
        VStack{
            Text(names[0])
            Text(names[1])
            Text(names[2])
            Text(engkrDictionary["Apple"]!)
            Text(engkrDictionary["Banana"]!)
            Text(engkrDictionary["Coconut"]!)
            Text(houseAnimals.intersection(fareAnimals).description) //교집함
            Text(houseAnimals.union(fareAnimals).description) // 합집합
         
        }
       
    }
}

struct Variable4_Previews: PreviewProvider {
    static var previews: some View {
        Variable4()
    }
}

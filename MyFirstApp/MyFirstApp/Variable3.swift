//
//  Variable3.swift
//  MyFirstApp
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct Variable3: View {
    //대입 연산자
    let name = "Dabin"
    var age = 25
    var anyNumber = 6
    var anyNumber2 = 8
    var anyNumber3 = 6
    
    var body: some View {
        VStack{
            //사칙 연산자
            //Text("\(age) + \(anyNumber) = \(age+anyNumber)")
            Text("\(age) - \(anyNumber) = \(age-anyNumber)")
            Text("\(age) * \(anyNumber) = \(age*anyNumber)")
            Text("\(age) / \(anyNumber) = \(age/anyNumber)")
            Text("\(age) % \(anyNumber) = \(age%anyNumber)")
            // 비교연산자
            Text("\(anyNumber > anyNumber2)".description)
            Text("\(anyNumber < anyNumber2)".description)
            Text("\(anyNumber <= anyNumber2)".description)
            Text("\(anyNumber >= anyNumber2)".description)
            Text("\(anyNumber == anyNumber3)".description)
            Text("\(anyNumber != anyNumber2)".description)
            //vstack 밑에는 10개가 최대이다.
        }

        Text("\(name)")
    }
}

struct Variable3_Previews: PreviewProvider {
    static var previews: some View {
        Variable3()
    }
}

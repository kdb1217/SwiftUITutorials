//
//  MyOptionalChaining.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/22.
//

import SwiftUI

struct Student {
    let name: String
    let pet: Pet?
    
}

struct Pet{
    
    let name: String
    let age: Int
}

struct MyOptionalChaining: View {
    
    let Rash = Student(name: "rash", pet: Pet(name: "pipi", age: 2))
    var body: some View {
        VStack{
            Text(Rash.name)
            
            if let petName = Rash.pet?.name{
                Text(petName)
            }
        }
    }
}

struct MyOptionalChaining_Previews: PreviewProvider {
    static var previews: some View {
        MyOptionalChaining()
    }
}

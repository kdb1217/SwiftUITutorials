//
//  MyOptional.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct MyOptional: View {
    
    let name: String
    let age: Int?
    
    
    var body: some View {
        VStack{
            Text(name)
            if let age = age{
                Text(age.description)
            }
            
        }
       
    }
}

struct MyOptional_Previews: PreviewProvider {
    static var previews: some View {
        MyOptional(name: "Dabin", age: 25)
    }
}

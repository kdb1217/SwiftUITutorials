//
//  Variable.swift
//  MyFirstApp
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct Variable: View {
    let name = "Dabin"
    var age = 25
    var body: some View {
        VStack{
            Text("Hi "+name)
            Text("Hi "+name)
            Text("Hi "+name)
            Text("Hi "+name)
            Text("Hi "+name)
        }
       
    }
}

struct Variable_Previews: PreviewProvider {
    static var previews: some View {
        Variable()
    }
}

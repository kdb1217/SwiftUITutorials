//
//  Variable2.swift
//  MyFirstApp
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct Variable2: View {
    
    let name: String = "Dabin"
    let age: Int = 25
    let height: Double = 175
    let hasjob: Bool = false
    var body: some View {
        Text("Hello, \(name) \(age)살이에요 \(height) \(hasjob.description)")
    }
}

struct Variable2_Previews: PreviewProvider {
    static var previews: some View {
        Variable2()
    }
}

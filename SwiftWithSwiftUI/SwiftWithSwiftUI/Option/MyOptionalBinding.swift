//
//  MyOptionalBinding.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/22.
//

import SwiftUI

struct MyOptionalBinding: View {
    
    var nickName: String? = "Rash"
    var body: some View {
    
        if let nickName = nickName{
            Text(nickName)
        } else {
            Text("nickName")
        }
    }
}

struct MyOptionalBinding_Previews: PreviewProvider {
    static var previews: some View {
        MyOptionalBinding()
    }
}

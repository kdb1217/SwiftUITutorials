//
//  MyToggle.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MyToggle: View {
    @State var isLightOn: Bool = false
    
    var body: some View {
        Toggle(isOn: $isLightOn) {
            if isLightOn{
                Text("Light On")
            } else {
                Text("Light Off")
            }
        }
        .toggleStyle(.switch)
        .tint(.green)
        .padding()
    }
}

struct MyToggle_Previews: PreviewProvider {
    static var previews: some View {
        MyToggle()
    }
}

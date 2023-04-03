//
//  MyLabel.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MyLabel: View {
    var body: some View {
        VStack{
            HStack{
                Text("Leeo")
                Text(Image(systemName: "bolt"))
            }
            Label("Label",systemImage: "42.circle")
        }
    }
}

struct MyLabel_Previews: PreviewProvider {
    static var previews: some View {
        MyLabel()
    }
}

//
//  MyClosure2.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/24.
//

import SwiftUI

struct MyClosure2: View {
    
    @State var myName: String = "not yet"
    
    var myCustomClouser: (String, String) -> String = { prefix, name in
        return prefix + name
    }
    
    var body: some View {
        VStack {
            Text(myName)
            Button {
                myName = createName(prefix: "1", name: "2")
            } label: {
                Text("Hit me")
            }

        }
    }
    func createName(prefix: String, name: String) -> String {
        return myCustomClouser("Cool", "Dab2")
    }
}

struct MyClosure2_Previews: PreviewProvider {
    static var previews: some View {
        MyClosure2()
    }
}

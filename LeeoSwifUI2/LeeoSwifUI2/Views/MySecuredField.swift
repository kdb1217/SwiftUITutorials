//
//  MySecuredField.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MySecuredField: View {
    @State var myPassword: String = ""
    @State var isSecureMode: Bool = true
    
    var body: some View {
        VStack{
            Text(myPassword)
            HStack{
                
                if isSecureMode{
                    SecureField("Password", text: $myPassword)
                        .textFieldStyle(.roundedBorder)
                } else {
                    TextField("Password", text: $myPassword)
                        .textFieldStyle(.roundedBorder)
                }
                
                Button {
                    isSecureMode.toggle()
                } label: {
                    Image(systemName: "eye")
                }
                
            }
          
        }
     
    }
}

struct MySecuredField_Previews: PreviewProvider {
    static var previews: some View {
        MySecuredField()
    }
}

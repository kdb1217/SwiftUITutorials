//
//  MyAlert.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MyAlert: View {
    @State var isShowingAlert: Bool = false
    
    var body: some View {
        Button {
            isShowingAlert = true
        } label: {
            Text("Show alert!")
        }
        .alert(isPresented: $isShowingAlert){
            Alert(title: Text("This is alert!"),
                  primaryButton: .default(Text("Ok")), secondaryButton: .cancel())
        }
    }
}

struct MyAlert_Previews: PreviewProvider {
    static var previews: some View {
        MyAlert()
    }
}

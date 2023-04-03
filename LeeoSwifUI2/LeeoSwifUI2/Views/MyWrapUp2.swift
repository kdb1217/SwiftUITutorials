//
//  MyWrapUp2.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MyWrapUp2: View {
    
    @State var userID: String = ""
    @State var userPassword: String = ""
    @State var hasLoggedIn: Bool = false
    @State var hasShownPassword: Bool = false
    var body: some View {
        VStack{
            HStack{
                Label{
                    Text("ID :  ")
                } icon: {
                    Image(systemName: "person.fill")
                }
                TextField("enter ID", text: $userID)
            }
           
            Divider()
            HStack{
                Label {
                    Text("PW : ")
                } icon: {
                    Image(systemName: "lock.fill")
                }
                if hasShownPassword {
                    TextField("enter password", text: $userPassword)
                } else {
                    SecureField("enter password", text: $userPassword)
                }
                
                Spacer()
                Toggle(isOn: $hasShownPassword) {
                    Text("Show")
                }
            }
            Button {
                if userID == "Leeo" &&  userPassword == "1234" {
                    hasLoggedIn = true
                } else{
                    hasLoggedIn = false
                }
            } label: {
                Text("Sign in")
                    .padding()
                    .background(.green)
                    
            }

        }
        .sheet(isPresented: $hasLoggedIn,
               content: {Text("Hello Leeo! Welcome")})
        .padding()
        
    }
}

struct MyWrapUp2_Previews: PreviewProvider {
    static var previews: some View {
        MyWrapUp2()
    }
}

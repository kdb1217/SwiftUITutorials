//
//  MyStruct.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/22.
//

import SwiftUI

struct UserInfo {
    let name: String
    let age: Int?
    let email: String?
    let job: String?
    let hasPet: Bool
    
    func sayMyName(with name: String) {
        print(name)
    }
}

struct MyStruct: View {
    let userInfo: UserInfo
    
    var body: some View {
        VStack{
            Text(userInfo.name)
            Text(userInfo.age?.description ?? "100")
            Text(userInfo.email?.description ?? "moksg4@naver.com")
            Text(userInfo.job?.description ?? "no")
            Text(userInfo.hasPet.description )
            Button {
                userInfo.sayMyName(with: userInfo.name)
            } label: {
                Text("Button")
            }

        }
    }
   
}

struct MyStruct_Previews: PreviewProvider {
    static var previews: some View {
        let dabin = UserInfo(name: "Dabin",
                            age: 25,
                            email: "moksg4@naver.com",
                            job: "voice actoress",
                            hasPet: false)
        MyStruct(userInfo: dabin)
                
        
    }
}

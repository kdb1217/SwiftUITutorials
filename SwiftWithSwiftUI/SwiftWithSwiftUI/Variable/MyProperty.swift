//
//  MyProperty.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/23.
//

import SwiftUI

struct MyProperty: View {
    
    @State  var koreanMoney: Int = 1000
    var japanesMoney: Int {
        get {
            return koreanMoney/10
        }
        set//(value 변수를 만들면 변수를 안에서 쓸 수 있다.)
        {
            koreanMoney = japanesMoney * 10
        }
    }
    // 프로퍼티 - 저장 변수 <- 변수
    //        - 연산 변수
    
    var body: some View {
        VStack{
            Text("\(koreanMoney.description)원 있습니다.")
            Text("\(japanesMoney.description)엔 있습니다.")
            Button {
                koreanMoney = 200
            } label: {
                Text("Button")
            }

        }
        
    }
}

struct MyProperty_Previews: PreviewProvider {
    static var previews: some View {
        MyProperty()
    }
}

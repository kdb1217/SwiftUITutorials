//
//  MyMethod.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/23.
//

import SwiftUI

func returnLeeo3() -> String {
    return "Leeo3"
}
// 메소드는 구조체나 클래스 이넘등의 안에서 쓰는 함수
// 함수 = 어떤 행위 어떤 행동을 할지를 코드블럭 안에 넣어논다.
// 스ㅌ
struct MyMethod: View {
    var body: some View {
        Text(returnLeeo5())
    }
    
    func returnLeeo5() -> String{
        return "Leeo3"
    }
}

struct MyMethod_Previews: PreviewProvider {
    static var previews: some View {
        MyMethod()

    }
}

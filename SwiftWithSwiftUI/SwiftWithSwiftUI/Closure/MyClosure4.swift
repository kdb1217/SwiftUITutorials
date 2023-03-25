//
//  MyClosure4.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/25.
//

import SwiftUI

struct MyClosure4: View {
    var body: some View {
        Text("Leeo")
        
            .onAppear(){
                // 함수의 마지막 인자가 클로저라면 무엇을 할지 행동을 넣어주는것 뿐이기에 파라미터 이름이 생략이 된다.
                testTrailingclosure(first: 3, second: 4) { a, b in
                    print("\(a) and \(b)")
                }
            }
    }
    
    func testTrailingclosure(first: Int, second: Int, action: (Int,Int)->()){
        action(first,second)
    }
}

struct MyClosure4_Previews: PreviewProvider {
    static var previews: some View {
        MyClosure4()
    }
}

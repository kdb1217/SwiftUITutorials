//
//  MyExtension.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/25.
//

import SwiftUI

struct MyExtension: View {
    var body: some View {
        ZStack{
            Color.peach.ignoresSafeArea()
            Text("Leeo")
        }
    }
}

extension String{
    func chechHaveDoubleDash(){
        
    }
}
// 익스텐션이란 무엇인가?
extension Color {
    static let peach = Color("Peach")
    }

struct MyExtension_Previews: PreviewProvider {
    static var previews: some View {
        MyExtension()
    }
}

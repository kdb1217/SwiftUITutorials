//
//  MyAppear.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MyAppear: View {
    @State var name: String = "NoName"
    @State var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            NavigationLink("Test"){
                Text("Sample")
            }
        }
//        Text(name)
//            .onAppear(){
//                print("On Appear")
//                name = "Leeo"
//            }.onDisappear{
//                print("On Disappear")
//            }
//            .sheet(isPresented: $isPresented) {
//                Text("Modal")
//            }
//
//        Button{
//            isPresented.toggle()
//        } label: {
//            Text("Change")
//                .onAppear{
//                    print("On Appear2")
//
//                }.onDisappear{
//                    print("On DisAppear2")
//                }
//        }
  }
}

struct MyAppear_Previews: PreviewProvider {
    static var previews: some View {
        MyAppear()
    }
}

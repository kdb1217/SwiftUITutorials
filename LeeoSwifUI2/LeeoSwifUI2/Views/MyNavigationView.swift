//
//  MyNavigationView.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("My View1")){
                ZStack{
                    Color.green
                    Text("test")
                }
            }.navigationTitle("Hello")
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}

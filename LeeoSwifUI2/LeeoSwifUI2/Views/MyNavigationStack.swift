//
//  MyNavigationStack.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MyNavigationStack: View {
    var body: some View {
        NavigationStack {
            NavigationLink(value: 3){ 
                Text("Test3")
            }.navigationDestination(for: Int.self) { value in
                Text("Leeo tried \(value) times")
            }
        }
    }
}

struct MyNavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationStack()
    }
}

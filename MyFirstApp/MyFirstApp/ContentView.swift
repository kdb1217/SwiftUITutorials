//
//  ContentView.swift
//  MyFirstApp
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button{
                print("Clicked")
            } label: {
                Text("Hello,Dabin")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.yellow)
                    .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

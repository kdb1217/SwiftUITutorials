//
//  ContentView.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
           Divider()
            HStack{
                Image(systemName: "heart")
                Divider()
                    .frame(height: 30)
                Text("Leeo")
                Divider()
                    .frame(height: 30)
            }
            
            Divider()
                .frame(width: 150 )
                .background(.red)
            
            Divider()
            HStack{
                Image(systemName: "bolt")
                Divider()
                    .frame(height: 30)
                Text("Olivia")
                Divider()
                    .frame(height: 30)
            }
    
            Divider()
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Loop.swift
//  MyFirstApp
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct Loop: View {
    
    let fareAnimals = ["🐮","🐔","🐑","🐶","🐱"]
    
    
    var body: some View {
        VStack {
           /* ForEach(fareAnimals, id: \.self) {animal in
                Text(animal)
                
            }
            */
            
            ForEach(0 ..< 5) { number in
                Text(number.description)
            }
            
            
            
        }
    }
}

struct Loop_Previews: PreviewProvider {
    static var previews: some View {
        Loop()
    }
}

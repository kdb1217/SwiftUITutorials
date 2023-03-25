//
//  MyDataModeling.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/25.
//

import SwiftUI

struct MyDataModeling: View {
    
    struct Pet {
        let name: String
        let ownerName: String
        let type: String
        let hasBaby: Bool
    }
    
    let myPet = Pet(name: "BBiBBi", ownerName: "Leeo", type: "Cat", hasBaby: false)
    
    let myPet2 = Pet(name: "Dodo", ownerName: "Leeo", type: "Dog", hasBaby: true)
    
    var body: some View {
        VStack{
            Text(myPet2.name)
            Text(myPet2.ownerName)
            Text(myPet2.type)
        }
    }
}

struct MyDataModeling_Previews: PreviewProvider {
    static var previews: some View {
        MyDataModeling()
    }
}

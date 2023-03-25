//
//  MyProtocol.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/25.
//

import SwiftUI

protocol Vehicle{
    var name: String {get}
    var speed: Int {get}
}

struct MyProtocol: View {
    
    struct Car: Vehicle{
        let name: String
        let speed: Int
        let gear: Int
    }
    
    struct Train: Vehicle {
        let name: String
        let speed: Int
    }
    
    struct AirPlain: Vehicle{
        var name: String
        var speed: Int
    }
    let car = Car(name: "Power", speed: 3, gear: 4)
    let train = Train(name: "Popo", speed: 14)
    
    let vehicle: [Vehicle] = [Car(name: "Power", speed: 3,gear: 4),
                    Train(name: "Popo", speed: 14),
                          AirPlain(name: "Baba",speed: 412)]
    var body: some View {
        VStack{
            HStack{
                Text(vehicle[0].name)
                Text(vehicle[0].speed.description)
                
            }
            HStack{
                Text(vehicle[1].name)
                Text(vehicle[1].speed.description)
                
            }
            HStack{
                Text(vehicle[2].name)
                Text(vehicle[2].speed.description)
            }
        }
    }
}

struct MyProtocol_Previews: PreviewProvider {
    static var previews: some View {
        MyProtocol()
    }
}

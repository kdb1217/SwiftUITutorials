//
//  MyHof.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/25.
//

import SwiftUI


// () -> ()

struct MyHof: View {
    let friends = ["Leeo", "Olivia", "Domi", "Ho"]
    let ages = [13, 32, 11, 39]
    // x = 2
    // x^2 + y = 4
    // x^3
    
    
    var body: some View {
        List {
            // ForEach(ages.map({ item in
            //     String(item)
            // }), id: \.self) { friend in Text(friend)
            
           // ForEach(ages.filter({ item in
            //    item % 2 == 0
           // }).map({ item in
            //    String(item)
           // }), id: \.self) { friend in Text(friend)
                
            //}
            Text(ages.reduce(0, { partialResult, next in
                partialResult + next
            }).description)
            
        }
    }
    
    struct MyHof_Previews: PreviewProvider {
        static var previews: some View {
            MyHof()
        }
    }
}

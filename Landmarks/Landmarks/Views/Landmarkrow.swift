//
//  LandmarkROw.swift
//  Landmarks
//
//  Created by 김다빈 on 2023/03/20.
//

import SwiftUI

struct Landmarkrow: View {
    var landmark: Landmark
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LandmarkROw_Previews: PreviewProvider {
    static var previews: some View {
        Landmarkrow(landmark: landmarks[0])
    }
}

//
//  MyConcurrency.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/25.
//

import SwiftUI

struct MyConcurrency: View {
    @State var myName = "Leeo"
    var body: some View {
        
        VStack{
            Text(myName)
            
            Button("Download"){
                
                //
               downloadFile()
            }

        }
    }
    
    func downloadFile(){
        // 옛날 방식
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            myName = "Done"
        }
    }
}

struct MyConcurrency_Previews: PreviewProvider {
    static var previews: some View {
        MyConcurrency()
    }
}

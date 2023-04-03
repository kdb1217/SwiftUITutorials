//
//  MyModal.swift
//  LeeoSwifUI2
//
//  Created by 김다빈 on 2023/04/03.
//

import SwiftUI

struct MyModal: View {
    
    @State var isShowingModal: Bool = false
    
    var body: some View {
        Button {
            isShowingModal = true
        } label: {
            Text("Call modal")
        }
        .fullScreenCover(isPresented: $isShowingModal){
            ZStack{
                Color.orange.ignoresSafeArea()
                VStack{
                    Text("Modal view")
                    Button {
                        isShowingModal = false
                    } label: {
                        Text("dismiss")
                    }
                }
               
            }
        }

    }
}

struct MyModal_Previews: PreviewProvider {
    static var previews: some View {
        MyModal()
    }
}

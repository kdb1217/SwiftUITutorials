//
//  MyEnum.swift
//  MyFirstApp
//
//  Created by 김다빈 on 2023/03/21.
//

import SwiftUI

struct MyEnum: View {
    @State var menu: Menu = .pork
    
    enum Menu {
        case beef, pork, chicken,duck,salmon, Iamb, apple
    }
    var body: some View {
        Text("졸려")
        /*
         switch menu{
         case.beef:
         
         case.salmon:
         
         case.pork:
         
         case.chicken:
         
         case.duck:
         
         case.Iamb:
         
         case.apple:
         }
         }
         
         /*
          
          
          
          
          var body: some View {
          if menu == .beef{
          Text("오늘 메뉴는 소고기")
          } else if menu == .pork{
          
          } else if menu == .chicken{
          Text("오늘 메뉴는 닭고기")
          } else {
          Text("이걸 먹을 수 있나?")
          }
          
          }
          */
         }
         
         struct MyEnum_Previews: PreviewProvider {
         static var previews: some View {
         MyEnum()
         }
         */
    }
}

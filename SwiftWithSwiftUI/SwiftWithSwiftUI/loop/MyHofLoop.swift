//
//  MyHofLoop.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/25.
//

import SwiftUI

struct MyHofLoop: View {
    @State var friends = ["Leeo Lee", "Dab Kim", "JinPark","Leeo Lee"]
    var body: some View {
        VStack{
            List{
                ForEach(friends, id: \.self){
                    friend in Text(friend)
                }
                Button("remove space"){
                    friends = friends
                        .map({ friend in
                            friend.replacingOccurrences(of: " ", with: "")
                        })
                        .filter({ friend in
                        friend == "LeeoLee"
                    })
            
                    //friends = friends.filter({ friend in
                      //  friend == "Leeo Lee"
                    //friends = filterName(friends, filteredName: "Leeo Lee")
                   // friends = friends.map({ friend in
                    //    friend.replacingOccurrences(of: " ", with: "")
                  //  })
                    
                }
    
            }
        }
    }
    
    func filterName(_ names: [String], filteredName: String) -> [String]{
        var tempList: [String] = []
        for item in names{
            if item == filteredName {
                tempList.append(item)
            }
        }
        
        return tempList
    }
    
    func removeSpace(_ names: [String]) -> [String] {
        var tempNames:[String] = []
        
        for item in names {
            tempNames.append(item.replacingOccurrences(of: " ", with: ""))
        }
        return tempNames
    }
}

struct MyHofLoop_Previews: PreviewProvider {
    static var previews: some View {
        MyHofLoop()
    }
}

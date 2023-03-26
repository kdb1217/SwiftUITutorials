//
//  ContentView.swift
//  MyFirst
//
//  Created by 김다빈 on 2023/03/26.
//

import SwiftUI

struct Person: Identifiable{
    var id = UUID()
    let name: String
    let imageName: String
}



struct ContentView: View {
    
    @State var strength: Double? = 0
    @State var isLighting: Bool = false
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                Image(systemName: isLighting ? "bolt.fill" : "bolt")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 200)
                
                Spacer()
                
                HStack{
                    Text("번개를 원하시면 ")
                    
                    Button {
                        isLighting.toggle()
                    } label: {
                        Text("번쩍!")
                            .padding()
                            .background(.orange)
                            .cornerRadius(10)
                    }
                    
                }
            }
        }
        
        
//        Image(systemName: "bolt")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 300, height: 200, alignment: .trailing)
//            .background(.green)
//        VStack{
//            Image(systemName: "bolt")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100)
//                .background(.green)
//                .foregroundColor(.red)
//                .padding(.bottom, 100)
//
//
//            Image(systemName: "bolt")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100)
//                .padding(.leading, 100)
//                .background(.green)
//                .foregroundColor(.red)
//                .padding(.leading,100)
//        }
//
        

        
        
//        Color(.blue)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 30))
        
       
            
            
      
    }
        
//        let people: [Person] = [Person(name: "Leeo",imageName: "heart"),
//                                Person(name: "Dodo",imageName: "heart.fill"),
//                                Person(name: "Olivia",imageName: "bolt")]
//
//        List(people) {person in
//            HStack {
//                Image(systemName: person.imageName)
//                Text(person.name)
//            }
//
//        }

//        List {
//            HStack{
//                Image(systemName: "heart")
//                Text("KDB")
//            }
//            HStack{
//                Image(systemName: "heart.fill")
//                Text("Dodo")
//            }
//            HStack{
//                Image(systemName: "bolt")
//                Text("Olivia")
//            }
//        }
        }

struct MyView: View {
    var body: some View{
        Text("Hi Leeo!")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

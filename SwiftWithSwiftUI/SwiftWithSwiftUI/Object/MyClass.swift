//
//  MyClass.swift
//  SwiftWithSwiftUI
//
//  Created by 김다빈 on 2023/03/22.
//

import SwiftUI
struct Person {
    var name: String
    let age: Int
}

class PersonClass {
    var name: String
    let age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

struct MyClass: View {
    let rash = Person(name: "Rash", age: 20)
    @State var nickName: String = "None"
    
    var body: some View {
        VStack{
            Text(nickName)
            
            Button{
                var rash = PersonClass(name: "Rash", age: 25)
                var fakeRash = rash
                fakeRash.name = "Rash2"
                fakeRash.name = "Rash3"
                nickName = fakeRash.name
            } label: {
                Text("Hit")
            }
        }
    }
}

struct MyClass_Previews: PreviewProvider {
    static var previews: some View {
        MyClass()
    }
}

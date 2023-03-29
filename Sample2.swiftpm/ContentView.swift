import SwiftUI

struct ContentView: View {
    
    @State var number : Int = 0
    
    var body: some View {
            VStack{
                Spacer()
                Text("Act 1")
                    .padding()
                Spacer()
                HStack{
                    VStack{
                        RoundedRectangle(cornerRadius: 8).fill(.gray)
                        .frame(maxWidth: 104,maxHeight: 104)
                        .padding()
                        .modifier(CountungNumberAnimationModifier(number : CGFloat(number), emojiNum: 0))
                        
                        Text("Helia")
                        Text("claire")
                        Text("Zett")
                        Text("Rash")
                    }
                  
                    Spacer()
                RoundedRectangle(cornerRadius: 8).fill(.gray)
                    .frame(maxWidth: 104,maxHeight: 104)
                    .padding()
                    .modifier(CountungNumberAnimationModifier(number : CGFloat(number), emojiNum: 1))
                    Spacer()
                RoundedRectangle(cornerRadius: 8).fill(.gray)
                    .frame(maxWidth: 104,maxHeight: 104)
                    .padding()
                    .modifier(CountungNumberAnimationModifier(number : CGFloat(number), emojiNum: 2))
                    Spacer()
                RoundedRectangle(cornerRadius: 8).fill(.gray)
                    .frame(maxWidth: 104,maxHeight: 104)
                    .padding()
                    .modifier(CountungNumberAnimationModifier(number : CGFloat(number), emojiNum: 3))
                    Spacer()
                RoundedRectangle(cornerRadius: 8).fill(.gray)
                    .frame(maxWidth: 104,maxHeight: 104)
                    .padding()
                    .modifier(CountungNumberAnimationModifier(number : CGFloat(number), emojiNum: 4))
                RoundedRectangle(cornerRadius: 8).fill(.gray)
                    .frame(maxWidth: 104,maxHeight: 104)
                    .padding()
                    .modifier(CountungNumberAnimationModifier(number : CGFloat(number), emojiNum: 5))
                }
                Spacer()
                HStack{
                    Button {
                        print("Button")
                    } label: {
                       Text("뒤로가기")
                            .fixedSize()
                            .font(.system(size: 10))
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 48,height: 48)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                    }
                    
                    Spacer()

                    Button {
                        refresh()
                    } label: {
                        Text("룰렛 돌리기")
                            .font(.system(size: 24))
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 192,height: 50)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.blue))
                    }
                    Spacer()
                }
                Spacer()
                Spacer()

            }
                              
    }
}

extension ContentView {
    fileprivate func refresh(){
        self.number = 0
        
        withAnimation(.easeInOut(duration: 3)){
            if self.number == 0{
                print("asd")
                self.number = 40
                print(self.number)
            }
        }
    }
}

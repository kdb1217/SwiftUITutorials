import SwiftUI

struct ContentView: View {
    
    @State var number : Int = 0
    @State var offsetY: [CGFloat] = [0,0,0,0,0,0]
    @State private var isAnimationEnabled = false
    
    var body: some View {
            VStack{
                Spacer()
                Text("Act 1")
                    .padding()
                Spacer()
                HStack{
                    RoundedRectangle(cornerRadius: 8).fill(.gray)
                    .frame(maxWidth: 104,maxHeight: 104)
                    .padding()
                    .modifier(CountungNumberAnimationModifier(number : CGFloat(number), emojiNum: 0))
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
                        withAnimation {
                            self.isAnimationEnabled.toggle()
                        }
                    } label: {
                        Text("룰렛 돌리기")
                            .font(.system(size: 24))
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 192,height: 50)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.blue))
                    }
                    if isAnimationEnabled{
                        
                    }
                    Spacer()
                }
                Spacer()
                Spacer()

            }
                              
    }
}

/*
 struct NumberLabelView : View {
     @State private var offsetY: CGFloat = 0
     let number : CGFloat
     let emoji: [(String,String)]
     var body: some View{
         VStack{
             Spacer()
             Text("\(emoji[(Int(number)<=0 ? 0 : Int(number)) % 6].0)")
                 .fontWeight(.black)
                 .font(.largeTitle)
                 .offset(y:self.offsetY)
                
             Spacer()
             Text("\(emoji[(Int(number)<=0 ? 0 : Int(number)) % 6].1)")
                 .font(.system(size: 10))
                 .fontWeight(.black)
                 .transition(.opacity)
         }
         .onAppear{
             withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses:  true)){
                 self.offsetY = -15
                 }
             }
         .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)){
             _ in DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                 withAnimation(.none){
                     self.offsetY = -15
                 }
             }
         }
     }
 }
 */

extension ContentView {
    fileprivate func refresh(){
        self.number = 0
        
        withAnimation(Animation.easeInOut(duration: 3.5)){
            if self.number == 0{
                print("asd")
                self.number = 40
                print(self.number)
            }
        }
    }
}

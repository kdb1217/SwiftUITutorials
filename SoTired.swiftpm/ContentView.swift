import SwiftUI




struct ContentView: View {
    @State private var animationAmount = 0.0
    @State var animate : Bool = false
    
    //이모지를 넣어주세요 마지막값을 목표값으로 넣어주세요
    @State var emoji1 : [String] = ["😒", "😕", "😗", "😙", "💪", "😌", "😆", "😉", "😙"]
    @State var emoji2 = ["😨", "🤭", "😲", "😆", "🥳", "🤩", "😆", "😉", "😆"]
    @State var emoji3 = ["😰", "🤔", "🤓", "😎", "😔", "😇", "😆", "😉", "😎"]
    @State var emoji4 = ["👻", "😟", "😲", "😆", "🤩", "😅", "😅", "😉", "😆"]
    @State var emoji5 = ["😳", "🥶", "🤩", "😄", "😁", "🥳", "😆", "😉", "😄"]
    @State var emoji6 = ["🤩", "🧐", "🌪️", "🍔", "🎂", "🍻", "😆", "😉", "🍔"]
    
    var body: some View {
        NavigationView{
            
            ZStack{
                Image("spring")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Text("산책 미팅")
                        .italic()
                        .font(.system(size: 45))
                        .padding(.top,30)
                    //Rolling을 넣어준다
                    HStack {
                        Spacer()
                        HStack{
                            
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100,height: 100)
                                        .opacity(0.5)
                                        .foregroundColor(.white)
                                    
                                    Rolling(font: .system(size: 80), emoji: $emoji1, animate: $animate)
                                }
                                
                                
                                Text("Claire")
                                    .font(.system(size: 24))
                            }
                            .padding(.leading, 50)
                            Spacer()
                        }
                        HStack{
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100,height: 100)
                                        .opacity(0.5)
                                        .foregroundColor(.white)
                                    
                                    
                                    Rolling(font: .system(size: 80), emoji: $emoji2, animate: $animate)
                                }
                                
                                Text("Helia")
                                    .font(.system(size: 24))                            }
                            .padding(.leading, 20)
                            Spacer()
                        }
                        HStack{
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100,height: 100)
                                        .opacity(0.5)
                                        .foregroundColor(.white)
                                    
                                    Rolling(font: .system(size: 80), emoji: $emoji3, animate: $animate)
                                }
                                
                                Text("Tyler")
                                    .font(.system(size: 24))
                            }
                            .padding(.leading, 20)
                            Spacer()
                        }
                        HStack{
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100,height: 100)
                                        .opacity(0.5)
                                        .foregroundColor(.white)
                                    
                                    Rolling(font: .system(size: 80), emoji: $emoji4, animate: $animate)
                                    
                                }
                                
                                Text("Rash")
                                    .font(.system(size: 24))
                            }
                            
                            .padding(.leading, 20)
                            Spacer()
                        }
                        HStack{
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100,height: 100)
                                        .opacity(0.5)
                                        .foregroundColor(.white)
                                    
                                    Rolling(font: .system(size: 80), emoji: $emoji5, animate: $animate)
                                }
                                
                                Text("Goggins")
                                    .font(.system(size: 21))
                            }
                            .padding(.leading, 20)
                            Spacer()
                        }
                        HStack{
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100,height: 100)
                                        .opacity(0.5)
                                        .foregroundColor(.white)
                                    
                                    Rolling(font: .system(size: 80), emoji: $emoji6, animate: $animate)
                                }
                                
                                Text("Zett")
                                    .font(.system(size: 24))
                                
                            }
                            .padding(.leading, 20)
                            Spacer()
                        }
                    }
                    .padding(.bottom,30)
                    // 버튼
                    ZStack{
                        
                    HStack{
                        
                        
                        NavigationLink(
                            destination: MainView(),
                            
                            label: {
                                Text("뒤로 가기")
                            })
                        .frame(width: 100,height: 50)
                        .foregroundColor(.black)
                        .background(Color(.white))
                        .clipShape(Capsule())
                        .padding(.leading,40)
                        
                        HStack{
                            
                            Button {
                                withAnimation{
                                    self.animationAmount += 360
                                    
                                }
                                animate.toggle()
                            } label: {
                                Text("눌러주세요!")
                                    .bold()
                            }
                            .font(.system(size: 24))
                            .frame(width: 192,height: 50)
                            .foregroundColor(.pink)
                            .background(Color(.white))
                            .clipShape(Capsule())
                            .padding(.leading,160)
                            .rotation3DEffect(
                                .degrees(animationAmount),
                                axis: (x: 1.0, y: 0.0, z: 0.0))
                            Spacer()
                        }
                        }
                        CherryBlossom("cherryBlossom")
                            .background(.clear)
                            .opacity(0.2)
        
                        
                        Spacer()
                    }
                    .padding(.bottom,30)
                }
                }
            }
        }
    }
        
        
        
        //landscapeView
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView().previewInterfaceOrientation(.landscapeRight)
            }
        }
    
    

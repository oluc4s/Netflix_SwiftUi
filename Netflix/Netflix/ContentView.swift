//
//  ContentView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI
import CoreData

<<<<<<< HEAD
enum rota {
    case home
    case search
    case movie
    case download
    case Fav
}

=======
>>>>>>> parent of 4e8e2ab (new icons, search, player and view)
struct ContentView: View {
    
    var body: some View {
<<<<<<< HEAD
        VStack{
            if rota == .home{
                HomeView(rota: $rota)
            }else if rota == .search{
                SearchView(rota: $rota)
            }else if rota == .movie{
                PlayerView(rota: $rota)
            }else if rota == .download{
                DownloadView(rota: $rota)
            }else if rota == .Fav{
                FavView(rota: $rota)
=======
        ZStack{
            Color("dark").edgesIgnoringSafeArea(.all)
            VStack{
                MenuTopView()
                ScrollView{
                    ScrollView(.horizontal, showsIndicators: false){
                        ScrollViewReader { value in

                        HStack{
                            ForEach(0 ..< 60) { item in
                                HStack{
                                    CardFocusView(item: item % 7)
                                }.id(item)
                            }
                        }.onAppear{value.scrollTo(31, anchor: .center)}
                    }
                    }
                    TitleList(title: "CONTINUE ", subTitle: "WATCHING")
                    ScrollView(.horizontal, showsIndicators: false){
                        ScrollViewReader { value in
                        HStack{
                            ForEach(0 ..< 7) { item in
                                HStack{
                                    MovieAttendingView(item: item)
                                }.id(item)
                            }
                        }.onAppear{value.scrollTo(1, anchor: .center)}
                        }
                    }
                    
                    TitleList(title: "MY ", subTitle: "LIST")
                    ScrollView(.horizontal, showsIndicators: false){
                        ScrollViewReader { value in
                        HStack{
                            ForEach(0 ..< 7) { item in
                                HStack{
                                    MovieSeeView(item: item)
                                }.id(item)
                            }
                        }.onAppear{value.scrollTo(3, anchor: .center)}
                        }
                    }
                    
                    TitleList(title: "NETFLIX ", subTitle: "ORIGINALS")
                    ScrollView(.horizontal, showsIndicators: false){
                        ScrollViewReader { value in
                            HStack{
                                ForEach(0 ..< 7) { item in
                                    HStack{
                                        MovieSeeView(item: item)
                                    }.id(item)
                                }
                            }.onAppear{value.scrollTo(5, anchor: .center)}
                        }
                    }
                    Rectangle().frame(width: 120, height: 100, alignment: .center).opacity(0)
                }
>>>>>>> parent of 4e8e2ab (new icons, search, player and view)
            }
            MenuBarView()
        }
    }
}
struct TitleList:View {
    var title:String = ""
    var subTitle:String = ""
    var body: some View{
        HStack{
        Text(title).font(.system(size: 15, weight: .light)).foregroundColor(.white) + Text(subTitle).font(.system(size: 15)).bold().foregroundColor(.white)
            Image(systemName: "chevron.right").font(.system(size: 11)).foregroundColor(.white)
            Spacer()
        }.padding(.horizontal,12)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MenuBarView: View{
    var body: some View{
        VStack{
            Spacer()
            HStack{
            VStack{
                HStack(spacing: 60){
                    Image(systemName: "house").font(.title).foregroundColor(.white)
                    Image(systemName: "magnifyingglass").font(.title).foregroundColor(.white)
                    Image(systemName: "play.rectangle").font(.title).foregroundColor(.white)
                    Image(systemName: "arrow.down.to.line.alt").font(.title).foregroundColor(.white)
                }.padding()
            }.background(Color.black.blur(radius: 1).opacity(0.9)).clipShape(Capsule())
        
        }
        }
    }
}

struct MenuTopView: View{
    var body: some View{
        VStack{
            HStack{
                Image(systemName: "line.horizontal.3").resizable().frame(width: 18, height: 10).font(.title).foregroundColor(.white)
                Spacer()
                Image("netflix_logo").resizable().frame(width: 100, height: 50)
                Spacer()
                Image("user").resizable().frame(width: 30, height: 30).clipShape(Circle()).background(Circle().foregroundColor(.white).frame(width: 33, height: 33))
            }.padding(.horizontal,20)
        }
    }
}


struct BlurView:UIViewRepresentable {
    var effect: UIBlurEffect.Style
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: effect))
        
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}


struct CardFocusView:View {
    var item: Int = 0
    var body: some View{
        ZStack{
            Color("Color\(item)")
            VStack{
                Image("destaque\(item)").resizable().frame(width: UIScreen.main.bounds.width - 30, height: 200, alignment: .center)
            }
        }.frame(width: UIScreen.main.bounds.width - 30, height: 200, alignment: .center).cornerRadius(30)
    }
}

struct MovieAttendingView:View {
    var item: Int = 0
    var body: some View{
        ZStack{
            VStack{
                ZStack{
                Image("postl\(item)").resizable().frame(width: 120, height: 170, alignment: .center)
                    VStack{
                        Spacer()
                     
                        HStack{
                            VStack{
                                HStack{
                                    Rectangle().frame(width: (13 * CGFloat(item)), height: 3).foregroundColor(Color("rednetflix"))
                                    Spacer()
                                }
                                HStack{
                                    Spacer()
                                    Text("S 2: E 11").font(.system(size: 13, weight: .light)).foregroundColor(.white)
                                    Image(systemName: "play.circle").font(.system(size: 13, weight: .light)).foregroundColor(.white)
                                    Spacer()
                                }
                            }
                        }.background(Color.black.opacity(0.7))
                    }
                }
                
            }
          
        }.frame(width: 120, height: 170, alignment: .center).cornerRadius(15)
    }
}
struct MovieSeeView:View {
    var item: Int = 0
    var body: some View{
        ZStack{
            Color("Color\(item)")
            VStack{
                Image("postl\(item)").resizable().frame(width: 120, height: 170, alignment: .center)
            }
        }.frame(width: 120, height: 170, alignment: .center).cornerRadius(15)
    }
}

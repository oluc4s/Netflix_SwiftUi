//
//  HomeView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

struct HomeView: View {
    @Binding var rota: rota
    var body: some View {
        NavigationView{
            
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
                }
                MenuBarView(rota: $rota)
            }.navigationBarHidden(true)

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(rota: .constant(.home))
    }
}

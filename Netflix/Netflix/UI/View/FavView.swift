//
//  Fav.swift
//  Netflix
//
//  Created by Matheus Lucas on 07/06/21.
//

import SwiftUI

struct FavView: View {
    @Binding var rota: rota
    var body: some View{
        NavigationView{
            ZStack{ Color("dark").edgesIgnoringSafeArea(.all)
                VStack{
                    TitleList(title: "MY ", subTitle: "Favorite")
                    ScrollView(.horizontal, showsIndicators: false){
                        ScrollViewReader { value in
                            HStack{
                                ForEach(0..<99) { item in
                                    MovieSeeView(isFav: true)
                                }
                            }
                        }
                    }
                }
                VStack{
                    MenuBarView(rota: $rota)
                }
            }
        }
    }
}

struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        FavView(rota: .constant(.Fav))
    }
}


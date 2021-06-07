//
//  MovieSeeView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

struct MovieSeeView:View {
    @State var isFav: Bool = false
    var item: Int = 0
    var body: some View{
        ZStack{
            Color("Color\(item)")
            VStack{
                Image("postl\(item)").resizable().frame(width: 120, height: 170, alignment: .center)
            }
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: isFav ? "star.fill" : "star").foregroundColor(.white).shadow(color: .black, radius: 3, x: 1, y: 2).onTapGesture {
                        isFav.toggle()
                    }
                }.padding([.horizontal],5).padding(.top,1)
                Spacer()
            }
        }.frame(width: 120, height: 170, alignment: .center).cornerRadius(15)
        
    }
}

struct MovieSeeView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSeeView()
    }
}

//
//  MovieSeeView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

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


struct MovieSeeView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSeeView()
    }
}

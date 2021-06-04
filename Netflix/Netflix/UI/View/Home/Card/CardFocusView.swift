//
//  CardFocusView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

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
struct CardFocusView_Previews: PreviewProvider {
    static var previews: some View {
        CardFocusView()
    }
}

//
//  TitleList.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

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

struct TitleList_Previews: PreviewProvider {
    static var previews: some View {
        TitleList()
    }
}

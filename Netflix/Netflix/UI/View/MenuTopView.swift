//
//  MenuTopView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

struct MenuTopView: View{
    var body: some View{
        VStack{
            HStack{
     
                Image("netflix_logo_small").resizable().frame(width: 33, height: 33)
                Spacer()
                Image(systemName: "airpods").font(.system(size: 19)).foregroundColor(.white).frame(width: 33, height: 33)
                Image(systemName: "airplayvideo").font(.system(size: 19)).foregroundColor(.white).frame(width: 33, height: 33).padding(.trailing,12)
    
                    NavigationLink(destination: AccountView()){
                        Image("user").resizable().frame(width: 30, height: 30).clipShape(Circle()).background(Circle().foregroundColor(.white).frame(width: 33, height: 33))
                    }
                
            }.padding(.horizontal,20)
        }
    }
}

struct MenuTopView_Previews: PreviewProvider {
    static var previews: some View {
        MenuTopView().background(Color.black)
    }
}

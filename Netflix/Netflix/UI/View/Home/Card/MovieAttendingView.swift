//
//  MovieAttendingView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

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

struct MovieAttendingView_Previews: PreviewProvider {
    static var previews: some View {
        MovieAttendingView()
    }
}

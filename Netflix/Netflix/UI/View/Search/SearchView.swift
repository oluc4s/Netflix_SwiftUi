//
//  SearchView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

struct SearchView: View {
    @Binding var rota: rota
    @State var search:String = ""
    var body: some View {
        ZStack{
            Color("dark").edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass").foregroundColor(.white)
                    TextField("Pesquisa", text: $search).foregroundColor(.white)
                }.padding().background(Color.black.blur(radius: 0.2).opacity(0.9)).clipShape(Capsule())
                ScrollView{
                    ForEach(0 ..< 7) { item in
                        ItemSearchView(item: item)
                    }
                }
            }.padding(.horizontal,12)
            MenuBarView(rota: $rota)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(rota: .constant(.search))
    }
}
struct ItemSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ItemSearchView()
    }
}
struct ItemSearchView: View {
    var item:Int = 0
    var body: some View {
        HStack{
            Image("destaque\(item)").resizable().frame(width: 140, height: 80).cornerRadius(10)
            Text("Who Killed Sara ?").bold().foregroundColor(.white)
            Spacer()
            Image(systemName: "play.circle").font(.system(size: 30)).foregroundColor(.white)
        }
    }
}

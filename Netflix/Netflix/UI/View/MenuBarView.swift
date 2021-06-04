//
//  MenuBarView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

struct MenuBarView: View{
    @Binding var rota: rota

    var body: some View{
        
        VStack{
            Spacer()
            HStack{
            VStack{
                HStack(spacing: 60){
                    Image(systemName: "house").font(.title).foregroundColor(rota == .home ? .blue : .white).onTapGesture {
                        rota = .home
                    }
                    Image(systemName: "magnifyingglass").font(.title).foregroundColor(rota == .search ? .blue : .white).onTapGesture {
                        rota = .search
                    }
                    Image(systemName: "play.rectangle").font(.title).foregroundColor(rota == .movie ? .blue : .white).onTapGesture {
                        rota = .movie
                    }
                    Image(systemName: "arrow.down.to.line.alt").font(.title).foregroundColor(rota == .download ? .blue : .white).onTapGesture {
                        rota = .download
                    }
                }.padding()
            }.background(Color.black.blur(radius: 1).opacity(0.9)).clipShape(Capsule())
        
        }
        }.ignoresSafeArea(.keyboard)
    }
}

struct MenuBarView_Previews: PreviewProvider {
    static var previews: some View {
        MenuBarView(rota:.constant(.home))
    }
}

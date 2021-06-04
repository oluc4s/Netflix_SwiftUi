//
//  ContentView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI
import CoreData

enum rota {
    case home
    case search
    case movie
    case download
}

struct ContentView: View {
    @State var rota: rota = .home
    var body: some View {
        VStack{
            if rota == .home{
                HomeView(rota: $rota)
            }else if rota == .search{
                SearchView(rota: $rota)
            }else if rota == .movie{
                PlayerView(rota: $rota)
            }else if rota == .download{
                DownloadView(rota: $rota)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BlurView:UIViewRepresentable {
    var effect: UIBlurEffect.Style
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: effect))
        
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}




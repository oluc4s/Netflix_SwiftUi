//
//  PlayerView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//
import AVKit
import SwiftUI

struct PlayerView: View {
    @Binding var rota: rota

    var body: some View {
        ZStack{
            Color("dark").edgesIgnoringSafeArea(.all)
            VStack{
                MenuTopView()
                VideoPlayer(player: AVPlayer(url: URL(string: "https://bit.ly/swswift")!))
                
            }
            MenuBarView(rota: $rota)
            
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(rota: .constant(.movie))
    }
}

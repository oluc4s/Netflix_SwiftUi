//
//  DownloadView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

struct DownloadView: View {
    @Binding var rota: rota

    var body: some View {
        ZStack{
            Color("dark").edgesIgnoringSafeArea(.all)
            VStack{
                MenuTopView()
            }
            MenuBarView(rota: $rota)
            
        }
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView(rota: .constant(.download))
    }
}

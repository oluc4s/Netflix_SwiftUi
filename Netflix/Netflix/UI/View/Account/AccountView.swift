//
//  AccountView.swift
//  Netflix
//
//  Created by Matheus Lucas on 04/06/21.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack{
            List{
                Text("My List")
                Text("App Settings")
                Text("Account")
                Text("Help")
            }
            HStack{
                Text("Sign Out")
            }
            HStack{
                Text("Version: 13.30.0 (3551)")
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

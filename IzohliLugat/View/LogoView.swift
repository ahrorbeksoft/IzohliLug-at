//
//  LogoView.swift
//  IzohliLugat
//
//  Created by Ahrorbek Abdullayev on 26/10/22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Izohli".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.accentColor)
            
            Image("uz-flag")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("lugʻat".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.accentColor)

            
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}

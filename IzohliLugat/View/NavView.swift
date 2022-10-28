//
//  NavView.swift
//  IzohliLugat
//
//  Created by Ahrorbek Abdullayev on 26/10/22.
//

import SwiftUI

struct NavView: View {
    @State private var animated = false

    var body: some View {
        VStack {
            HStack {
//                Button(action: {}, label: {
//                    Image(systemName: "slider.horizontal.3")
//                        .font(.title)
//                        .foregroundColor(.accentColor)
//                })
                Spacer()
                    LogoView()
//                        .opacity(1)
//                        .offset(x: 0, y: 0)
//                        .onAppear(perform: {
//                            withAnimation(.easeOut(duration: 0.5)) {
//                                //
//                            }
//                        })
                Spacer()
//                Button(action: {}, label: {
//                    Image(systemName: "slider.horizontal.3")
//                        .font(.title)
//                        .foregroundColor(.accentColor)
//                })
            }
            
        }
    
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}

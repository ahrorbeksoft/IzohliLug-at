//
//  NavView.swift
//  IzohliLugat
//
//  Created by Ahrorbek Abdullayev on 26/10/22.
//

import SwiftUI

struct NavView: View {
    @State private var show = false
    @State private var animated = false
    @Binding var searchText: String
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.show.toggle()
                }, label: {
                    Image(systemName: show ? "xmark" : "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.accentColor)
                })
                Spacer()
                if self.show {
                    TextField("Search", text: $searchText)
                        .padding(4.5)
                        .padding(.horizontal, 20)
                        .background(Color("InvertColor"))
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 0)
                    
//                        .opacity(1)
//                        .offset(x: 0, y: 0)
//                        .onAppear(perform: {
//                            withAnimation(.easeOut(duration: 0.5)) {
                                //
//                            }
//                        })

                } else {
                    LogoView()
//                        .opacity(1)
//                        .offset(x: 0, y: 0)
//                        .onAppear(perform: {
//                            withAnimation(.easeOut(duration: 0.5)) {
//                                //
//                            }
//                        })
                }
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "slider.horizontal.3")
                        .font(.title)
                        .foregroundColor(.accentColor)
                })
            }
            
        }
    
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView(searchText: .constant("a"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

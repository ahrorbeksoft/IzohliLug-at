//
//  MyDesign.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct MyDesign: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 0) {
                Divider()
                    .padding(.bottom, 8)
                HStack {
                    Image(systemName: "textformat.size")
                    Spacer()
                    HStack(spacing: 2) {
                        
                        Image(systemName: "lock.fill")
                            .imageScale(.small)
                            .foregroundColor(.secondary)
                        TextField("hello", text: $text)
                            .padding(.vertical, 11)
                    }
                    .font(.subheadline)
                    Spacer()
                    Image(systemName: "arrow.clockwise")
                }
                .padding(.horizontal, 13)
                .background {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .foregroundColor(Color(.systemBackground))
                    .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.09), radius: 9, x: 0, y: 2)
                    .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.05), radius: 1, x: 0, y: 1)
                }
                .padding(.horizontal)
                .padding(.bottom, 10)
                .font(.subheadline)
                HStack {
                    Image(systemName: "chevron.left")
                    Image(systemName: "chevron.right")
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .foregroundColor(.secondary)
                    Image(systemName: "square.and.arrow.up")
                    Image(systemName: "book")
                        .frame(maxWidth: .infinity)
                        .clipped()
                    Image(systemName: "square.on.square")
                }
                .padding(.horizontal, 20)
                .font(.title3.weight(.light))
                .foregroundColor(.blue)
            }
            .padding(.bottom, 40)
            .background {
                Rectangle()
                .fill(.clear)
                .background(Material.bar)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .clipped()
        .background {
            ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Divider()
                    .padding(.bottom, 3)
                Image("myImage")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("myImage")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.top, 38)
            .background {
                Rectangle()
                .foregroundColor(.white)
            }
        }
        }
    }
}

struct MyDesign_Previews: PreviewProvider {
    static var previews: some View {
        MyDesign()
    }
}

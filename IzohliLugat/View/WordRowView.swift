//
//  WordRowView.swift
//  IzohliLugat
//
//  Created by Ahrorbek Abdullayev on 26/10/22.
//

import SwiftUI

struct WordRowView: View {
    var izoh: IzohModel
    var body: some View {
        
        HStack{
           
            // MARK: - IMAGE ICON
//            Image(fruit.image)
//                .renderingMode(.original)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 80, height: 80, alignment: .center)
//                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
//                .background(
//                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
//                )
//                .cornerRadius(8)
            
            
            // MARK: - TITLE AND HEADLINE
            VStack(alignment: .leading, spacing: 5) {
                Text(izoh.word)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(izoh.definition)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                
                
            }//: VSATACK
            
            
        }//: HSTACK
    }
}


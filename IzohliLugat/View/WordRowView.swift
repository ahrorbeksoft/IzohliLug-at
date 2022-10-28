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
            // MARK: - TITLE AND HEADLINE
            VStack(alignment: .leading, spacing: 5) {
                Text(izoh.word)
                    .font(.title3)
                    .fontWeight(.bold)
                if izoh.definition.isEmpty || izoh.definition == " " {
                    
                }else{
                    Text(izoh.definition)
                        .font(.caption)
                        .foregroundColor(Color.secondary)
                }
                if izoh.fulldefinition.isEmpty || izoh.fulldefinition == " " {
                    
                }else{
                    Text(izoh.fulldefinition)
                        .font(.caption)
                        .foregroundColor(Color.secondary)
                }

                
            }//: VSATACK
            
            
        }//: HSTACK
    }
}


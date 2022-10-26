//
//  WordView.swift
//  IzohliLugat
//
//  Created by Ahrorbek Abdullayev on 26/10/22.
//

import SwiftUI

struct WordView: View {
    var izoh: IzohModel
    var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //MARK: - TITLE
                        Text(izoh.word)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.green)
                        
                        //MARK: - HEADLINE
                        Text(izoh.definition)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        //MARK: - DESCRIPTION
                        Text(izoh.fulldefinition)
                            .multilineTextAlignment(.leading)
                        

                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                    
                }//: VSTACK
                .navigationBarTitle(izoh.word, displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: SCROLL
//                .edgesIgnoringSafeArea(.top)

            
        }

        }
}

//struct WordView_Previews: PreviewProvider {
//    static var previews: some View {
//        WordView()
//    }
//}

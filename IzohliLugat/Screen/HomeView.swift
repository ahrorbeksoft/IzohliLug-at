//
//  HomeView.swift
//  IzohliLugat
// test push commit from xcode
//  Created by Ahrorbek Abdullayev on 25/10/22.
//

import SwiftUI

struct HomeScreen: View {
//    @State var izohModels: [IzohModel]
    @State var searchText: String = ""
    
    var izohModels: [IzohModel] {
            if searchText.isEmpty {
                return DataBaseManager().getWords(word: "a")
            } else {
                return DataBaseManager().getWords(word: searchText)
            }
        }
    var body: some View {
        NavigationView() {
            List (self.izohModels) { (model) in
                NavigationLink(destination: WordView(izoh: model)) {
                    WordRowView(izoh: model)
                        .padding(.vertical, 4)
                }
                
            }
            .navigationTitle("Izohli lugʻat")
            .navigationViewStyle(StackNavigationViewStyle())
//            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Soʻz izlash...")
            
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

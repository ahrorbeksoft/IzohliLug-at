//
//  HomeView.swift
//  IzohliLugat
// test push commit from xcode
//  Created by Ahrorbek Abdullayev on 25/10/22.
//

import SwiftUI

struct HomeScreen: View {
    //    @State var izohModels: [IzohModel]
    @State private var searchText: String = ""
    @State private var wordShow: Bool = false
    @State private var shouldClose: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var izohModels: [IzohModel] {
        if searchText.isEmpty {
            return DataBaseManager().getWords(word: "a")
        } else {
            return DataBaseManager().getWords(word: searchText)
        }
    }
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.connectedScenes
                        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                        .first { $0.isKeyWindow }?.safeAreaInsets.top)
                    .background(.ultraThickMaterial)
                    .shadow(color: .accentColor.opacity(0.05), radius: 5, x: 0, y: 5)
                    .onTapGesture {
                        hideKeyboard()
                    }
                    
                    List (self.izohModels) { (model) in
//                        NavigationLink(destination: WordView(izoh: model, shouldClose: $shouldClose), isActive: $wordShow) {
                            WordRowView(izoh: model)
                                
//                        }
                        
                    }.onTapGesture {
                        hideKeyboard()
                    }
                    .listStyle(.plain)
//                    .navigationBarBackButtonHidden(true)
//                    .navigationBarHidden(true)
                    
                    
                    //                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Soʻz izlash...")
                    //                    .searchable(text: $searchText, prompt: "Soʻz izlash...")
                    
            
                
                SearchBarView(placeholder: "Search", text: $searchText)
            }.background(ignoresSafeAreaEdges: .all)
      
            
        }.ignoresSafeArea(.all, edges: .top)
        
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


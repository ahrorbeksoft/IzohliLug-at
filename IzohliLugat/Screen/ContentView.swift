//
//  ContentView.swift
//  IzohliLugat
//
//  Created by Ahrorbek Abdullayev on 25/10/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            HomeScreen().tabItem {
                Label("Home", systemImage: "house")
            }
            Text("Settings").tabItem {
                Label("Settings", systemImage: "gear")
            }
            Text("Hello").tabItem {
                Label("Settings", systemImage: "gear")
            }
            Text("Hello").tabItem {
                Label("Settings", systemImage: "gear")
            }
            Text("Hello").tabItem {
                Label("Settings", systemImage: "gear")
            }
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

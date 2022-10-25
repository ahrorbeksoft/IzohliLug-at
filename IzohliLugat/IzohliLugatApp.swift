//
//  IzohliLugatApp.swift
//  IzohliLugat
//
//  Created by Ahrorbek Abdullayev on 25/10/22.
//

import SwiftUI

@main
struct IzohliLugatApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

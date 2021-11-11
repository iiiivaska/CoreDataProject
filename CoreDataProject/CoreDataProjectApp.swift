//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Василий Буланов on 11/11/21.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

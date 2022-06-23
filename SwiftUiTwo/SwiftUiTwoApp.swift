//
//  SwiftUiTwoApp.swift
//  SwiftUiTwo
//
//  Created by Karavella on 22/06/22.
//

import SwiftUI

@main
struct SwiftUiTwoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeSwiftUIView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

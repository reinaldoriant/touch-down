//
//  touchDownApp.swift
//  touchDown
//
//  Created by TI Digital on 08/07/21.
//

import SwiftUI

@main
struct touchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

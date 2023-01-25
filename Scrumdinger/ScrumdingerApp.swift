//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Josh Zappone on 1/19/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}

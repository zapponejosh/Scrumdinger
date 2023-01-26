//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Josh Zappone on 1/19/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}

//
//  GitHubSampleAppApp.swift
//  GitHubSampleApp
//
//  Created by Vasya Smetankin on 13.07.2023.
//

import SwiftUI

@main
struct GitHubSampleAppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
            NotificationsView()
            ExploreView()
            ProfileView()
        }
    }
}

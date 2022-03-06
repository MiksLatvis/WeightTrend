//
//  WeightTrendApp.swift
//  WatchTrend WatchKit Extension
//
//  Created by Miks Latvis on 06/03/2022.
//

import SwiftUI

@main
struct WeightTrendApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}

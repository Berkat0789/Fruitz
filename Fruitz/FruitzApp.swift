//
//  FruitzApp.swift
//  Fruitz
//
//  Created by Yadilsa Diaz on 10/6/21.
//

import SwiftUI

@main
struct FruitzApp: App {
    @AppStorage("isOnboarding") var isOnboarding = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}

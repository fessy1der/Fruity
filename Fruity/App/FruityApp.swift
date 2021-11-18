//
//  FruityApp.swift
//  Fruity
//
//  Created by Festus Obi on 17/11/2021.
//

import SwiftUI

@main
struct FruityApp: App {
    
    // MARK: - Properties
     @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingUIView()
            } else{
                ContentView()
            }
        }
    }
}

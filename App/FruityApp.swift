//
//  FruityApp.swift
//  Fruity
//
//  Created by Hristo on 2023-11-06.
//

import SwiftUI
import SwiftData

@main
struct Fruits_VeggiesApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @AppStorage("isContent") var isContent: Bool = true
    @State private var showMenu: Bool = false
    var body: some Scene {
        let date = 62
        let spring = 80
        let summer = 172
        let autumn = 265
        let winter = 356
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else if isOnboarding {
                BottomNavView(tabSelection: 4)
            } else if date > spring && date < summer {
                BottomNavView(tabSelection: 4)
                //ContentView2()
            } else if date > summer && date < autumn {
                BottomNavView(tabSelection: 4)
                //ContentView3()
            } else if date > autumn && date < winter {
                BottomNavView(tabSelection: 4)
                //ContentView()
            } else {
                BottomNavView(tabSelection: 4)
                //ContentView1()
            }
            
        }
    }
}

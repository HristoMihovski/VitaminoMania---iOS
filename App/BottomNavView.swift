//
//  BottomNavView.swift
//  Fruity
//
//  Created by  User on 02.12.2023.
//

import SwiftUI

struct BottomNavView: View, Equatable {
    var tabSelection: Int
        
        // Implement the '==' operator function to compare two instances of BottomNavView
        static func == (lhs: BottomNavView, rhs: BottomNavView) -> Bool {
            return lhs.tabSelection == rhs.tabSelection
        }
    
    @State private var selection = 4
    
    var body: some View {
        TabView(selection: $selection) {
            ContentView2()
                .tabItem {
                    Label("Пролет", systemImage: "leaf.fill")
                }
                .tag(1)
            
            ContentView3()
                .tabItem {
                    Label("Лято", systemImage: "sun.max.fill")
                }
                .tag(2)
            
            ContentView()
                .tabItem {
                    Label("Есен", systemImage: "cloud.sun.fill")
                }
                .tag(3)
            
            ContentView1()
                .tabItem {
                    Label("Зима", systemImage: "cloud.snow.fill")
                }
                .tag(4)
        }
    }
}

#Preview {
    BottomNavView(tabSelection: 4)
}

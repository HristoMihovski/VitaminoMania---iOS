//
//  ContentView.swift
//  Fruity
//
//  Created by Hristo on 2023-11-06.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    	
    @State private var isShowingSettings: Bool = false
    @State private var showMenu: Bool = false
    @AppStorage("isContent") var isContent: Bool?
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits[0...4]) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Есенни Плодове")
            .navigationBarItems(
              trailing:
                Button(action: {
                  isShowingSettings = true
                }) {
                  Image(systemName: "slider.horizontal.3")
                } //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                  SettingsView()
                }
            )
            .navigationViewStyle(StackNavigationViewStyle())
/*            .navigationBarItems(
              leading:
                Button(action: {
                  showMenu = true
                    isContent = false
                }) {
                  Image(systemName: "line.horizontal.3")
                } //: BUTTON
                .sheet(isPresented: $showMenu) {
                  SideMenuView()
                }
            )
            .navigationViewStyle(StackNavigationViewStyle())*/
            /* The code is commented in case if something breaks with the TabView */
        }
    }
}


#Preview {
    ContentView(fruits: fruitsData)
}

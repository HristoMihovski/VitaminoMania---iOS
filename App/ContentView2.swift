//
//  ContentView2.swift
//  Fruity
//
//  Created by Violeta.Valcheva on 23.11.23.
//

import SwiftUI

import SwiftUI
import SwiftData

struct ContentView2: View {
        
    @State private var isShowingSettings: Bool = false
    @State private var showMenu: Bool = false
    @AppStorage("isContent") var isContent: Bool?
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits[6...7]) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Пролетни Плодове")
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
    ContentView2(fruits: fruitsData)
}

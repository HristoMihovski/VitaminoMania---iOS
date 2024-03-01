//
//  SideMenuView.swift
//  Fruity
//
//  Created by Violeta.Valcheva on 25.11.23.
//

import SwiftUI

struct SideMenuView: View {
  
    var fruits: [Fruit] = fruitsData
    var seasons: [Season] = seasonData
    @State private var showMenu: Bool = false
    @State private var hideMenu: Bool = false
    @AppStorage("isContent") var isContent: Bool?
    @Environment(\.presentationMode) var presentationMode
    
  var body: some View {
      NavigationView {
          VStack {
          Text("Изберете сезон по ваш избор:")
                .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
          
          Divider()
            .frame(width: 300, height: 2)
            .background(Color.black)
            .padding(.horizontal, 16)
          
          // MARK: - Content
          
            
                    ForEach(seasons[0...0]) { item in
                        NavigationLink(destination: ContentView2()) {
                            SeasonRowView(seasons: item)
                                .padding(.vertical, 4)
                        }
                    }
                
                .font(.title)
              ForEach(seasons[1...1]) { item in
                  NavigationLink(destination: ContentView3()) {
                      SeasonRowView(seasons: item)
                          .padding(.vertical, 4)
                  }
              }
          
          .font(.title)
              ForEach(seasons[2...2]) { item in
                  NavigationLink(destination: ContentView()) {
                      SeasonRowView(seasons: item)
                          .padding(.vertical, 4)
                  }
              }
          
          .font(.title)
              ForEach(seasons[3...3]) { item in
                  NavigationLink(destination: ContentView1()) {
                      SeasonRowView(seasons: item)
                          .padding(.vertical, 4)
                  }
              }
          
          .font(.title)
          
          Spacer()
        }
        .padding(32)
        .background(Color.white)
    .edgesIgnoringSafeArea(.bottom)
    .navigationBarItems(
      trailing:
        Button(action: {
          presentationMode.wrappedValue.dismiss()
        }) {
          Image(systemName: "xmark")
        }
    )
      }
  }
}

#Preview {
    SideMenuView(fruits: fruitsData, seasons: seasonData)
}

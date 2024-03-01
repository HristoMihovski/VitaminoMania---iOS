//
//  FruitDetailView.swift
//  Fruity
//
//  Created by Hristo on 11.11.23.
//

import SwiftUI
import SwiftData

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // Nutrients
                        
                        // Subheadline
                        Text("Всичко важно за плода \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                        // Description
                        Text(fruit.content)
                            .multilineTextAlignment(.leading)
                        // CO2 Footprint
                        Divider()
                        Text(fruit.co2)
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }// VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }// VStack
            }// Scroll
            .edgesIgnoringSafeArea(.top)
        }// Navigation
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}

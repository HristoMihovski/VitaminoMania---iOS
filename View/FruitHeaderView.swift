//
//  FruitHeaderView.swift
//  Fruity
//
//  Created by Violeta.Valcheva on 20.11.23.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(
                colors: [Color.colorLemonLight, Color.orange]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 20)
        }
        .frame(height: 440)
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}

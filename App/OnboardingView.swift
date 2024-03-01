//
//  OnboardingView.swift
//  Fruity
//
//  Created by Hristo on 2023-11-06.
//

import SwiftUI
import SwiftData

struct OnboardingView: View {
    //MARK: -PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: -BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...1]) {item in
                FruitCardView(fruit: item)
            }  //: LOOP
            FruitCardView(fruit: fruitsData[2])
        }   //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: -PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}

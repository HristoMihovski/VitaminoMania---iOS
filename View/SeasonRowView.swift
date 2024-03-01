//
//  SeasonRowView.swift
//  Fruity
//
//  Created by Violeta.Valcheva on 25.11.23.
//

import SwiftUI

struct SeasonRowView: View {
    
    var seasons: Season
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(seasons.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Image(systemName: seasons.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60, alignment: .center)
                .shadow(color: Color(red : 0, green: 0, blue: 0, opacity: 0.4), radius: 3, x: 2, y: 2)
                .cornerRadius(8)
                .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    SeasonRowView(seasons: seasonData[0])
}

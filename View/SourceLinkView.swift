//
//  SourceLinkView.swift
//  Fruity
//
//  Created by Violeta.Valcheva on 20.11.23.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Източник: ")
                Spacer()
                Link("Healthline", destination: URL(string: "https://www.healthline.com/nutrition")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}

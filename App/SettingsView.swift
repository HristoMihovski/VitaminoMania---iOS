//
//  SettingsView.swift
//  Fruity
//
//  Created by Hristo on 22.11.23.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  // MARK: - BODY

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          // MARK: - SECTION 1
          
          GroupBox(
            label:
              SettingsLabelView(labelText: "Fruity", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Повечето плодове имат естествено ниско съдържание на мазнини, натрий и калории. Никой няма холестерол. Плодовете са източници на много основни хранителни вещества, включително калий, диетични фибри, витамини и много други.")
                .font(.footnote)
            }
          }
          
          // MARK: - SECTION 2
          
          GroupBox(
            label: SettingsLabelView(labelText: "Персонализиране", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("Ако желаете, можете да рестартирате приложението, като превключите превключвателя в това поле. По този начин той стартира процеса на включване и ще видите отново началния екран.")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Рестатрирано".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.green)
              } else {
                Text("Рестартитай".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.secondary)
              }
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
          
          // MARK: - SECTION 3
          
          GroupBox(
            label:
            SettingsLabelView(labelText: "Приложение", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Разработчик", content: "Hristo Mihovski")
            SettingsRowView(name: "Динзайнер", content: "Hristo Mihovski")
            SettingsRowView(name: "Съвместимост", content: "iOS 14")
            SettingsRowView(name: "SwiftUI", content: "2.0")
            SettingsRowView(name: "Версия", content: "1.0")
          }
          
        } //: VSTACK
        .navigationBarTitle(Text("Настройки"), displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      } //: SCROLL
    } //: NAVIGATION
  }
}

// MARK: - PREVIEW

#Preview {
    SettingsView()
      .preferredColorScheme(.dark)
      .previewDevice("iPhone 11 Pro")
  }


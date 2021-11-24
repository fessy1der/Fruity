//
//  SettingsUIView.swift
//  Fruity
//
//  Created by Festus Obi on 24/11/2021.
//

import SwiftUI

struct SettingsUIView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnbarding: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(
                        label:
                            SettingsLabelUIView(labelText: "Fruity", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Checking your food intake is one of the most important ways to stay healthy. Especially the calorie intake you consume daily.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - Section 2
                    GroupBox(label: SettingsLabelUIView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("Do you wish to reset the application ? To restart app from afresh, use the toggle screen. In doing so, the app goes back to the on boarding screen that you saw when you installed it for the first time")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnbarding){
                            if isOnbarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - Section 3
                    GroupBox(label: SettingsLabelUIView(labelText: "Application", labelImage: "apps.iphone")){
                        SettingsRowUIView(name: "Developer & Designer", content: "Festus Obi")
                        SettingsRowUIView(name: "Compatibility", content: "iOS 15")
                        SettingsRowUIView(name: "Website", linkLabel: "Fruity", linkDestination: "fruity.com")
                        SettingsRowUIView(name: "Twitter", linkLabel: "@FessyWonder", linkDestination: "twitter.com/fessywonder")
                        SettingsRowUIView(name: "Version", content: "1.1.0")
                    }
                    
                } //: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
            } //: Scroll
        } //: Navigation
    }
}

// MARK: - Preview

struct SettingsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUIView()
            .preferredColorScheme(.dark)
    }
}

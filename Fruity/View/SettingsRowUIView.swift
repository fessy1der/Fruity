//
//  SettingsRowUIView.swift
//  Fruity
//
//  Created by Festus Obi on 24/11/2021.
//

import SwiftUI

struct SettingsRowUIView: View {
    // MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - Preview

struct SettingsRowUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowUIView(name: "Developer", content: "Festus Obi")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}

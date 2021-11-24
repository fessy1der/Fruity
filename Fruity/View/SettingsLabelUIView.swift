//
//  SettingsLabelUIView.swift
//  Fruity
//
//  Created by Festus Obi on 24/11/2021.
//

import SwiftUI

struct SettingsLabelUIView: View {
    // MARK: - Properties
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelUIView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

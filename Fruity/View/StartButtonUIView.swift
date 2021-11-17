//
//  StartButtonUIView.swift
//  Fruity
//
//  Created by Festus Obi on 17/11/2021.
//

import SwiftUI

struct StartButtonUIView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            print("Exit Onboarding")
        }){
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: Button
        .accentColor(Color.white)
    }
}

// MARK: - Preview

struct StartButtonUIView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonUIView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

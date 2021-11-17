//
//  OnboardingUIView.swift
//  Fruity
//
//  Created by Festus Obi on 17/11/2021.
//

import SwiftUI

struct OnboardingUIView: View {
    // MARK: - Properties
    var fruits : [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                CardUIView(fruit: item)
            } //: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingUIView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingUIView(fruits: fruitsData)
            
    }
}

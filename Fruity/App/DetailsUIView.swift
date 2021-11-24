//
//  DetailsUIView.swift
//  Fruity
//
//  Created by Festus Obi on 22/11/2021.
//

import SwiftUI

struct DetailsUIView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // Header
                    FruitHeaderUIView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        NutrientsUIView(fruit: fruit)
                        
                        // Sub-Headline
                        Text("Learn More About \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkUIView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//: VStack
                    .padding()
                    .frame(maxWidth:640,alignment: .center)
                }//: VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: Scroll
            .edgesIgnoringSafeArea(.top)
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview

struct DetailsUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsUIView(fruit: fruitsData[0])
    }
}

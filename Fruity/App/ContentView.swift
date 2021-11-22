//
//  ContentView.swift
//  Fruity
//
//  Created by Festus Obi on 17/11/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: DetailsUIView(fruit: item)){
                        FruitRowUIView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            } //: List
            .navigationTitle("Fruits")
        } //: Navigation
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}

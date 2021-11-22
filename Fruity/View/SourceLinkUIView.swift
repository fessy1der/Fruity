//
//  SourceLinkUIView.swift
//  Fruity
//
//  Created by Festus Obi on 22/11/2021.
//

import SwiftUI

struct SourceLinkUIView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

struct SourceLinkUIView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkUIView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

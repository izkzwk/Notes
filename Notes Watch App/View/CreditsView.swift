//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Dzmitry Bladyka on 9.04.23.
//

import SwiftUI

struct CreditsView: View {
    
    @State private var randomNumber = Int.random(in: 1..<4)
    
    private var randomImage: String {
        "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing: 3) {
            // Profile image
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // Header
            HeaderView(title: "Credits")
            
            // Content
            Text("Dzmitry Di")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}

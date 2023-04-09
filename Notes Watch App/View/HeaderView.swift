//
//  Header View.swift
//  Notes Watch App
//
//  Created by Dzmitry Bladyka on 9.04.23.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String = ""
    
    var body: some View {
        VStack {
            // Title
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            // Separator
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
        }
    }
}

struct Header_View_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

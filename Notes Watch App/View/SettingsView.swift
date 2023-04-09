//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Dzmitry Bladyka on 9.04.23.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("lineCount") var lineCount = 1
    @State private var value = 1.0
    
    func update() {
        lineCount = Int(value)
    }
    
    var body: some View {
        VStack(spacing: 8) {
            HeaderView(title: "Settings")
            
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            Slider(value: Binding(get: {
                self.value
            }, set: { (newValue) in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

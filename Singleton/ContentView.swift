//
//  ContentView.swift
//  Singleton
//
//  Created by Manoli on 28/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("AppSettings")
                .font(.title)
                .padding()
            if let theme = AppSettings.shared.string(for: "Theme") {
                Text("Theme: \(theme)")
            }
            if let maxConcurentDownloads = AppSettings.shared.int(for: "MaxConcurentDownloads") {
                Text("MaxConcurentDownloads: \(maxConcurentDownloads)")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

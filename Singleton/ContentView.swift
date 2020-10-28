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
            if let theme = AppSettings.shared.string(forKey: "Theme") {
                Text("Theme: \(theme)")
            }
            if let maxConcurrentDownloads = AppSettings.shared.int(forKey: "MaxConcurrentDownloads") {
                Text("MaxConcurrentDownloads: \(maxConcurrentDownloads)")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

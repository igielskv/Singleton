//
//  AppSettings.swift
//  Singleton
//
//  Created by Manoli on 28/10/2020.
//

import Foundation

class AppSettings {
    static let shared = AppSettings()
    
    private var settings: [String: Any] = [
        "Theme": "Dark",
        "MaxConcurentDownloads": 4
    ]
    
    private init() {
        
    }
    
    func string(for key: String) -> String? {
        return settings[key] as? String
    }
    
    func int(for key: String) -> Int? {
        return settings[key] as? Int
    }
}

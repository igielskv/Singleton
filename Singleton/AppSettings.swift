//
//  AppSettings.swift
//  Singleton
//
//  Created by Manoli on 28/10/2020.
//

import Foundation

class AppSettings {
    static let shared = AppSettings()
    
    private let serialQueue = DispatchQueue(label: "serialQueue")
    
    private var settings: [String: Any] = [
        "Theme": "Dark",
        "MaxConcurrentDownloads": 4
    ]
    
    private init() {
        
    }
    
    func string(forKey key: String) -> String? {
        return settings[key] as? String
    }
    
    func int(forKey key: String) -> Int? {
        return settings[key] as? Int
    }
    
    func set(value: Any, forKey key: String) {
        settings[key] = value
    }
}

//
//  AppSettings.swift
//  Singleton
//
//  Created by Manoli on 28/10/2020.
//

import Foundation

class AppSettings {
    static let shared = AppSettings()
    
    // To serialize getting and setting methods prevents crashes while AppSettings are acessed from multiple threads on concurrent queues, but they might couse performance issues.
    
    private let serialQueue = DispatchQueue(label: "serialQueue")
    
    private var settings: [String: Any] = [
        "Theme": "Dark",
        "MaxConcurrentDownloads": 4
    ]
    
    private init() {
        
    }
    
    func string(forKey key: String) -> String? {
        var result: String?
        
        serialQueue.sync {
            result = settings[key] as? String
        }
        
        return result
    }
    
    func int(forKey key: String) -> Int? {
        var result: Int?
        
        serialQueue.sync {
            result = settings[key] as? Int
        }
        
        return result
    }
    
    func set(value: Any, forKey key: String) {
        serialQueue.sync {
            settings[key] = value
        }
    }
}

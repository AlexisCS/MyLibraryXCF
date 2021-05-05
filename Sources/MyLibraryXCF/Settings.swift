//
//  File.swift
//  
//
//  Created by Alexis Celestino Solís on 05/05/21.
//

import Foundation

public struct Settings {
    public static func getPlist() -> [String: Any]? {
        guard let url = Bundle.module.url(forResource: "Settings", withExtension: "plist") else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        return try? PropertyListSerialization.propertyList(from: data, format: nil) as? [String: Any]
    }
}


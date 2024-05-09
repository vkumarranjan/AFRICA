//
//  CodableBundel.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 09/05/24.
//

import Foundation


extension Bundle {
    func decode(_ file: String) -> [CoverImgage] {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode([CoverImgage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loaded
    }
}

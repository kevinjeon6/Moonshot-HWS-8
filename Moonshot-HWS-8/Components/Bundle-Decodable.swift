//
//  Bundle-Decodable.swift
//  Moonshot-HWS-8
//
//  Created by Kevin Mattocks on 11/19/22.
//

import Foundation

extension Bundle {
    
    //The letter T when making a generic is the placeholder which we can name it anything if we want. But "T" is a bit more of a convention in coding and short-hand placeholder for "type"
    
    //Codable is a constraint to prevent the error in Xcode to ensure that the type we're working with conforms to the Codable protocal
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) in bundle")
        }
        
        
        //This is our String:Astronaut dictionary we are returning
        return loaded
        
    }
}





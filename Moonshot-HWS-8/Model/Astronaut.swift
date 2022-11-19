//
//  Astronaut.swift
//  Moonshot-HWS-8
//
//  Created by Kevin Mattocks on 11/19/22.
//

import Foundation


struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}


//Codable is an alias for two separate protocols: Encodable and Decodable. Can use either. If you want to be specific you can use Encodable and Decodable.

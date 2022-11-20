//
//  Mission.swift
//  Moonshot-HWS-8
//
//  Created by Kevin Mattocks on 11/19/22.
//

import Foundation


//Option 1 of how to write the Model for the JSON data
//struct Mission: Codable, Identifiable {
//    //Launch data is optional since one mission does not have a launch date so it may or may not be there
//
//    let id: Int
//    let launchData: String?
//    let crew: [Crew]
//    let description: String
//}
//
//
//
//struct Crew: Codable {
//    let name: String
//    let role: String
//}





struct Mission: Codable, Identifiable {
    //Launch data is optional since one mission does not have a launch date so it may or may not be there
    
    let id: Int
    let launchDate: Date?
    let crew: [Crew]
    let description: String
    
    
    //Can put Crew struct inside the Mission struct. This is a nested struct. Can access it by saying Mission.Crew
    struct Crew: Codable {
        let name: String
        let role: String
    }
    
    
    
    //Computed properties
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
    
}





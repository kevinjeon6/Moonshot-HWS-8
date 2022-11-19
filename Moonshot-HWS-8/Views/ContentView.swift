//
//  ContentView.swift
//  Moonshot-HWS-8
//
//  Created by Kevin Mattocks on 11/14/22.
//

import SwiftUI



struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        
        Text("\(astronauts.count)")
        
    }
}
       
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
 scaledToFit means the entire image will fit inside the container even if that means leaving some parts of the view empy
 
 
 scaledToFill means the view willl have no empty parts even if that means some of our image lies outside the container
 
 geo.size.width

 If you want to decode this kind of hierarchical data, the key is to create separate types for each level you have. The data must match the hierarchy you are requesting and Codable will do the work for us.


 */

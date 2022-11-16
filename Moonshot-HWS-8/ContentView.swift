//
//  ContentView.swift
//  Moonshot-HWS-8
//
//  Created by Kevin Mattocks on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
       
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
 */

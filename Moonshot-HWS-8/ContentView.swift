//
//  ContentView.swift
//  Moonshot-HWS-8
//
//  Created by Kevin Mattocks on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        GeometryReader { geo in
            Image("ghost")
                //Resizeable tells SwiftUI to make the image scalable and stretchable within the frame
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width * 0.8, height: 350)
            //geo.size.width * 0.8 means you want to take up 80% of our available screen width
                .frame(width: geo.size.width, height: geo.size.height)
            //Add a second frame if you want to center a view inside a GeometryReader
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

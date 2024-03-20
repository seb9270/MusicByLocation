//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Micko, Sebastian (AMM) on 20/03/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var locationHandler = LocationHandler()
    
    var body: some View {
        VStack {
            Text(locationHandler.lastKnownLocation)
            Text(locationHandler.country)
            Text(locationHandler.info)
            Spacer()
            Button("Find Music", action: {locationHandler.requestLocation()})
        }.onAppear(perform: {
            locationHandler.requestAuthorisation()
        })
    }
}

#Preview {
    ContentView()
}

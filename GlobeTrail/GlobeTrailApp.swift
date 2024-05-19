//
//  GlobeTrailApp.swift
//  GlobeTrail
//
//  Created by Seneen Khan on 18/05/24.
//

import SwiftUI

@main
struct GlobeTrailApp: App {
   @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView {
                    ContentView(location:Locations().primary)
                }
                .tabItem({
                    Image(systemName:"airplane.circle.fill")
                    Text("Explore")
                })
                NavigationView{
                   GlobeView()
                }
                .tabItem{
                    Image(systemName:"star.fill")
                    Text("Destinations")
                }
                NavigationView{
                    TIpsView()
                }
                .tabItem{
                    Image(systemName:"list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}

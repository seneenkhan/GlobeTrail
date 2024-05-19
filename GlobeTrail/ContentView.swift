//
//  ContentView.swift
//  GlobeTrail
//
//  Created by Seneen Khan on 18/05/24.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    var body: some View {
       ScrollView {
           Image(location.heroPicture)
                .resizable()
                .scaledToFit()
           Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
           Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
           Text(location.description)
               .padding(.horizontal)
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
           Text(location.more)
               .padding(.horizontal)
        }

       .navigationTitle("Explore")
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location:Locations().primary)
        }
    }
}

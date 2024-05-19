//
//  GlobeView.swift
//  GlobeTrail
//
//  Created by Seneen Khan on 19/05/24.
//
import MapKit
import SwiftUI

struct GlobeView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 13.0827,
            longitude: 80.2707
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.05,
            longitudeDelta: 0.05
        )
    )
    
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: locations.places) { location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(
                latitude: location.latitude,
                longitude: location.longitude)) {
                    NavigationLink( destination: ContentView(location: location)){
                        Image(location.country)
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 80, height: 40)
                            .shadow(radius: 3)
                    }
                }
        }
        .navigationTitle("Destinations")
    }
}

struct GlobeView_Previews: PreviewProvider {
    static var previews: some View {
        GlobeView()
            .environmentObject(Locations())
    }
}



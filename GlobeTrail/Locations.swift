//
//  Locations.swift
//  GlobeTrail
//
//  Created by Seneen Khan on 19/05/24.
//

import Foundation
class Locations : ObservableObject{
    @Published var places: [Location] 
    var primary: Location{
        places[0]
    }
    init(){
        let url =  Bundle.main.url(forResource:"locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}

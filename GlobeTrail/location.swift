//
//  location.swift
//  GlobeTrail
//
//  Created by Seneen Khan on 19/05/24.
//
import SwiftUI
import Foundation
struct Location: Decodable,Identifiable {
    let id:Int
    let name:String
    let country:String
    let description:String
    let more:String
    let latitude:Double
    let longitude:Double
    let heroPicture:String
    let advisory:String
    
    static let example: Location = Location(id:1, name:"Great Mountains", country: "America", description: "An amazing place to visit",more: "More text here",latitude:23.456,longitude: -45.789,heroPicture: "smokies",advisory: "Beware of Bears!!")
}

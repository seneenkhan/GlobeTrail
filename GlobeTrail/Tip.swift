//
//  Tip.swift
//  GlobeTrail
//
//  Created by Seneen Khan on 20/05/24.
//

import Foundation
struct Tip: Decodable{
    let text:String
    let children:[Tip]?
}

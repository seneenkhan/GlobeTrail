//
//  TIpsView.swift
//  GlobeTrail
//
//  Created by Seneen Khan on 20/05/24.
//

import SwiftUI

struct TIpsView: View {
    let tips: [Tip]
    init(){
        let url =  Bundle.main.url(forResource:"tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    var body: some View {
        List(tips,id: \.text, children: \.children){
            tip in
            if tip.children != nil{
                Label(tip.text,systemImage:"quote.bubble")
                    .font(.headline)
            }
            else{
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TIpsView_Previews: PreviewProvider {
    static var previews: some View {
        TIpsView()
    }
}

//
//  HView.swift
//  LazyStack
//
//  Created by Tony Hajdini on 13/12/2020.
//

import SwiftUI

struct HView: View {
    var body: some View {
        LazyHGrid(rows: /*@START_MENU_TOKEN@*/[GridItem(.fixed(20))]/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        }) {
            
        }
    }
}

struct HView_Previews: PreviewProvider {
    static var previews: some View {
        HView()
    }
}

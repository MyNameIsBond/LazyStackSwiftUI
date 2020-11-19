//
//  ContentView.swift
//  Shared
//
//  Created by Tony Hajdini on 18/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State var gridOption = false
    var body: some View {
        Button(action: {}) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Button")/*@END_MENU_TOKEN@*/
        }
        
        ScrollView {
            if gridOption {
                LazyVGrid(columns: <#[GridItem]#>) {
                    ForEach(1...1000, id: \.self) { value in
                        Text("Row \(value)")
                    }
                }
            } else {
                //code
            }
              
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

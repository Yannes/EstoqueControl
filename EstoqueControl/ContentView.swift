//
//  ContentView.swift
//  EstoqueControl
//
//  Created by Yannes Meneguelli on 12/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CircleTab: View {
    var body: some View{
        HStack{
            Button(action: {
                
            }) {
                Image(systemName: "heart")
            }
            
            Spacer(minLength: 15)
            
            Button(action: {
                
            }) {
                Image(systemName: "heart")
            }
            
            Spacer(minLength: 15)
            
            Button(action: {
                
            }) {
                Image(systemName: "heart")
            }
            
            Spacer(minLength: 15)
            
            Button(action: {
                
            }) {
                Image(systemName: "heart")
            }
            
        }
    }
    
}

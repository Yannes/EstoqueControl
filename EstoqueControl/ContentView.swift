//
//  ContentView.swift
//  EstoqueControl
//
//  Created by Yannes Meneguelli on 12/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack(spacing: 0){
            
            ZStack{
                Color.white
                
                if self.index == 0{
                    
                    Color.secondary
                }
                else if self.index == 1{
                    
                    Color.yellow
                }
                else if self.index == 2{
                    
                    Color.blue
                }
                else{
                    
                    SettingsView().padding(.top,20)
                }
            }.edgesIgnoringSafeArea(.all)
            
            TabBar(index: self.$index)
            
        }
       .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


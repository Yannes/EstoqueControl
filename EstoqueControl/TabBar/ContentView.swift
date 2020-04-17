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
                    
                    ProductListView()
                }
                else if self.index == 1{
                    
                     Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
                }
                else if self.index == 2{
                    
                     Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
                }
                else{
                    AjustesView()
                }
            }
        
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


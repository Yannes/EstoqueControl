//
//  ProductListView.swift
//  EstoqueControl
//
//  Created by Yannes Meneguelli on 15/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct ProductListView: View {
    
    @State var showingAddScreen = false
    
    
    
    var body: some View {
        NavigationView{
            VStack {
                ScrollView{
                    ForEach(0 ..< 6) { item in
                        ProductsView()
                    }
                }
            }
            .navigationBarTitle("Produtos",displayMode: .inline)
            .navigationBarItems(trailing:
                PlusButton()
            )
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}

struct PlusButton: View {
    
    @State var showingAddScreen: Bool = false
    
    var body: some View {
        Button(action:{
            self.showingAddScreen.toggle()
        }){
            Image(systemName: "plus")
                .foregroundColor(.white)
                .frame(width: 30, height: 30)
                .background(
                    Circle().fill(Color.red)
                        .frame(width: 32, height: 32, alignment: .center)   
            )
            
        } .sheet(isPresented: $showingAddScreen) {
            NewProductView()
        }
    }
}

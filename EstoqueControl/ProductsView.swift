//
//  ProductsView.swift
//  EstoqueControl
//
//  Created by Yannes Meneguelli on 14/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct ProductsView: View {
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal:Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Image("sabre")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .padding()

            Divider()
            VStack(alignment: .leading, spacing: 12){
                
                Text("teste")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .lineLimit(1)
                
                Text("test")
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                Text("test")
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                
            }.padding()
                .padding(.bottom,12)
            
        }.background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 8, x: 0, y: 0)
            .onTapGesture{
                self.hapticImpact.impactOccurred()
                self.showModal = true
        }
        .overlay(
            HStack{
                Spacer()
                VStack {
                    Image(systemName: "bookmark")
                        .font(Font.title.weight(.light))
                        .foregroundColor(.white)
                        .imageScale(.small)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), radius: 2, x: 0, y: 0)
                        .padding(.trailing,20)
                        .padding(.top,20)
                    Spacer()
                }
        })
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView().previewLayout(.sizeThatFits)
    }
}

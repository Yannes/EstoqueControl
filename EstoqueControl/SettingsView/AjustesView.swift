//
//  AjustesView.swift
//  EstoqueControl
//
//  Created by Yannes Meneguelli on 12/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct AjustesView: View {
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    var body: some View {
        
        NavigationView{
            Form{
                Section{
                    NavigationLink(destination: InformacoesAppView()){
                        LineSetteings(image: "info", title: "Informações", color: Color(#colorLiteral(red: 0, green: 0.5238402486, blue: 1, alpha: 1)))
                            .padding(.leading,8)
                    }
                    NavigationLink(destination: InformacoesAppView()){
                        LineSetteings(image: "envelope.badge", title: "Notificações", color: Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                            .padding(.leading,3)
                    }
                }
                
                Section{
                    NavigationLink(destination: InformacoesAppView()){
                        LineSetteings(image: "person.fill", title: "Conta", color: Color(#colorLiteral(red: 0, green: 0.5012661219, blue: 0, alpha: 1))).padding(.leading,3)
                        
                    }
                    NavigationLink(destination: PoliticsView()){
                        LineSetteings(image: "lock", title: "Politica de Privacidade", color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))).padding(.leading,3)
                    }
                }
                
                Section{
                    
                    
                    
                    Button(action: {
                      print("teste")
                    }) {
                        HStack(spacing:20) {
                            Spacer()
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .background(
                                    Rectangle()
                                        .fill(Color(#colorLiteral(red: 0.9334908128, green: 0, blue: 0, alpha: 1)))
                                        .frame(width: 30, height: 30, alignment: .center)
                                        .cornerRadius(10)
                            )
                            Text("Logout")
                                .foregroundColor(Color.red)
                                .fontWeight(.bold)
                                .padding(.vertical,1)
                            Spacer()
                        }.edgesIgnoringSafeArea(.top)
                    }
                }
                
            }.navigationBarTitle("Ajustes",displayMode: .inline)
        }
    }
}

struct AjustesView_Previews: PreviewProvider {
    static var previews: some View {
        AjustesView()
    }
}

struct LineSetteings: View {
    
    
    @State var image:String = ""
    @State var title:String = ""
    @State var color:Color = Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    
    var body: some View {
        HStack(spacing:20) {
            Image(systemName: image)
                .foregroundColor(.white)
                .background(
                    Rectangle()
                        .fill(color)
                        .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(10)
            )
            Text(title)
        }.edgesIgnoringSafeArea(.top)
    }
}

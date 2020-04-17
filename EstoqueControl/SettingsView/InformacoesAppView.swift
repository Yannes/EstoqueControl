//
//  SettingsView.swift
//  Project2 - Avocado
//
//  Created by Yannes Meneguelli on 25/03/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct InformacoesAppView: View {
    
    @State private var enableNotification: Bool = true
    @State private var backGorundRefresh: Bool = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 20){
                Image(systemName: "gamecontroller")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color:  Color(.gray), radius: 8, x: 0, y: 4)
                
                Text("- YTM Company -".uppercased())
                    .multilineTextAlignment(.center)
                    .font(.system(.subheadline, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
            }.padding()
                .frame(width: 200, height: 180)
            Form{
                
                Section(header: Text("Sobre o desenvolvedor")){
                    
                    if enableNotification{
                        ProductTypes(image: "tv", text: "Website", text2: "https://github.com/yannes", color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        ProductTypes(image: "flame", text:"Aplicativo", text2: "Controle para  estoque", color: Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                        ProductTypes(image: "shield", text: "Developer", text2: "Yannes Meneguelli", color: Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
                        ProductTypes(image: "heart", text:"Compatibilidade", text2: "iPhone  & iPad", color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        ProductTypes(image: "v.circle", text: "Versão", text2: "1.0.0", color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                    }else{
                        HStack{
                            Text("Personal message").foregroundColor(.gray)
                            Spacer()
                            Text(" 🥳 Happy Coding!!!")
                        }
                    }
                }
            }
            Spacer()
            
        }.frame(maxWidth: 640)
       //  .padding(.top)
     //   .background(Color.white)

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        InformacoesAppView()
    }
}

struct ProductTypes: View {
    
    var image:String = ""
    var text:String = ""
    var text2:String = ""
    var color:Color = Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    
    
    
    var body: some View {
        HStack{
            Image(systemName: image)
            .foregroundColor(color)
            Text(text).foregroundColor(.gray)
            Spacer()
            Text(text2)
            
        }
    }
}

//
//  TabBar.swift
//  EstoqueControl
//
//  Created by Yannes Meneguelli on 12/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI
struct TabBar : View {
    
    @Binding var index : Int
    
    var body : some View{
        
        
        ZStack {
            HStack{
                
                Button(action: {
                    self.index = 0
                }) {
                    
                    VStack(spacing:10){
                        if self.index != 0{
                            Image(systemName: "heart.fill")
                                .foregroundColor(Color.gray.opacity(0.5))
                            Text("heart")
                                .foregroundColor(Color.gray.opacity(0.7))
                                .font(.system(size: 10, design: .serif))
                        }
                        else{
                            Image(systemName: "heart.fill")
                                .myImageModifier()
                            Text("heart")
                                .foregroundColor(Color.gray.opacity(0.7))
                                .font(.system(size: 10, design: .serif))
                        }
                    }
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    self.index = 1
                    
                }) {
                    VStack(spacing:10){
                        if self.index != 1{
                            Image(systemName: "house.fill")
                                .foregroundColor(Color.gray.opacity(0.5))
                            Text("heart")
                                .foregroundColor(Color.gray.opacity(0.7))
                                .font(.system(size: 10, design: .serif))
                        }
                        else{
                            Image(systemName: "house.fill")
                                .myImageModifier()
                            Text("heart")
                                .foregroundColor(Color.gray.opacity(0.7))
                                .font(.system(size: 10, design: .serif))
                        }
                    }
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    
                    self.index = 2
                    
                }) {
                    VStack(spacing:10){
                        if self.index != 2{
                            Image(systemName: "trash.fill")
                                .foregroundColor(Color.gray.opacity(0.5))
                            Text("heart")
                                .foregroundColor(Color.gray.opacity(0.7))
                                .font(.system(size: 10, design: .serif))
                        }
                        else{
                            Image(systemName: "trash.fill")
                                .myImageModifier()
                            Text("heart")
                                .foregroundColor(Color.gray.opacity(0.7))
                                .font(.system(size: 10, design: .serif))
                        }
                    }
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    
                    self.index = 3
                    
                }) {
                    VStack(spacing:10){
                        if self.index != 3{
                            Image(systemName: "person.fill")
                                .foregroundColor(Color.gray.opacity(0.5))
                            Text("heart")
                                .foregroundColor(Color.gray.opacity(0.7))
                                .font(.system(size: 10, design: .serif))
                        }
                        else{
                            Image(systemName: "person.fill")
                                .myImageModifier()
                            Text("heart")
                                .foregroundColor(Color.gray.opacity(0.7))
                                .font(.system(size: 10, design: .serif))
                        }
                    }
                }
                
            }.padding(.vertical,-2)
                .padding(.bottom,30)
                .padding(.horizontal, 25)
                .background(Color.primary)
                .animation(.easeInOut)
                .edgesIgnoringSafeArea(.bottom)
        }.background(Color.primary)
            .edgesIgnoringSafeArea(.bottom)
    }
}


extension Image {
    func myImageModifier() -> some View {
        self
            .resizable()
            .frame(width: 25, height: 23)
            .foregroundColor(.primary)
            .padding()
            .background(
                Circle().fill(Color.red)
                    .frame(width: 40, height: 40, alignment: .center)
        )
            
            
            .background(
                Circle().fill(Color.primary)
                    .frame(width: 43, height: 43, alignment: .center)
        )
            .offset(y: -20)
            .padding(.bottom, -20)
    }
}


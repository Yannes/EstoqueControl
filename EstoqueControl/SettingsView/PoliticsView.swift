//
//  PoliticsView.swift
//  EstoqueControl
//
//  Created by Yannes Meneguelli on 12/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct PoliticsView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 0){
                Text("Política de privacidade para Estoque Control")
                    .foregroundColor(Color.blue)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                Text("""
                               Todas as suas informações pessoais recolhidas, serão usadas para o ajudar a tornar a sua visita no nosso site o mais produtiva e agradável possível.
                               A garantia da confidencialidade dos dados pessoais dos utilizadores do nosso site é importante para o Estoque Control.
                               Todas as informações pessoais relativas a membros, assinantes, clientes ou visitantes que usem o Estoque Control serão tratadas em concordância com a Lei da Proteção de Dados Pessoais de 26 de outubro de 1998 (Lei n.º 67/98).
                               A informação pessoal recolhida pode incluir o seu nome, e-mail, número de telefone e/ou telemóvel, morada, data de nascimento e/ou outros.
                               O uso do Estoque Control pressupõe a aceitação deste Acordo de privacidade. A equipa do Estoque Control reserva-se ao direito de alterar este acordo sem aviso prévio. Deste modo, recomendamos que consulte a nossa política de privacidade com regularidade de forma a estar sempre atualizado.
                               Os anúncios
                               Tal como outros websites, coletamos e utilizamos informação contida nos anúncios. A informação contida nos anúncios, inclui o seu endereço IP (Internet Protocol), o seu ISP (Internet Service Provider, como o Sapo, Clix, ou outro), o browser que utilizou ao visitar o nosso website (como o Internet Explorer ou o Firefox), o tempo da sua visita e que páginas visitou dentro do nosso website.
                               Ligações a Sites de terceiros
                               O Estoque Control possui ligações para outros sites, os quais, a nosso ver, podem conter informações / ferramentas úteis para os nossos visitantes. A nossa política de privacidade não é aplicada a sites de terceiros, pelo que, caso visite outro site a partir do nosso deverá ler a politica de privacidade do mesmo.
                               Não nos responsabilizamos pela política de privacidade ou conteúdo presente nesses mesmos sites.
                               """)
            }.padding()
                .padding(.top, 35)
                .navigationBarTitle("Termos e Politica",displayMode: .inline)
        }
    }
}

struct PoliticsView_Previews: PreviewProvider {
    static var previews: some View {
        PoliticsView()
    }
}








//Política de privacidade para Estoque Control
//Todas as suas informações pessoais recolhidas, serão usadas para o ajudar a tornar a sua visita no nosso site o mais produtiva e agradável possível.
//A garantia da confidencialidade dos dados pessoais dos utilizadores do nosso site é importante para o Estoque Control.
//Todas as informações pessoais relativas a membros, assinantes, clientes ou visitantes que usem o Estoque Control serão tratadas em concordância com a Lei da Proteção de Dados Pessoais de 26 de outubro de 1998 (Lei n.º 67/98).
//A informação pessoal recolhida pode incluir o seu nome, e-mail, número de telefone e/ou telemóvel, morada, data de nascimento e/ou outros.
//O uso do Estoque Control pressupõe a aceitação deste Acordo de privacidade. A equipa do Estoque Control reserva-se ao direito de alterar este acordo sem aviso prévio. Deste modo, recomendamos que consulte a nossa política de privacidade com regularidade de forma a estar sempre atualizado.
//Os anúncios
//Tal como outros websites, coletamos e utilizamos informação contida nos anúncios. A informação contida nos anúncios, inclui o seu endereço IP (Internet Protocol), o seu ISP (Internet Service Provider, como o Sapo, Clix, ou outro), o browser que utilizou ao visitar o nosso website (como o Internet Explorer ou o Firefox), o tempo da sua visita e que páginas visitou dentro do nosso website.
//Ligações a Sites de terceiros
//O Estoque Control possui ligações para outros sites, os quais, a nosso ver, podem conter informações / ferramentas úteis para os nossos visitantes. A nossa política de privacidade não é aplicada a sites de terceiros, pelo que, caso visite outro site a partir do nosso deverá ler a politica de privacidade do mesmo.
//Não nos responsabilizamos pela política de privacidade ou conteúdo presente nesses mesmos sites.

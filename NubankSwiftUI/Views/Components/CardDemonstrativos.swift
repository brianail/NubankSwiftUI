//
//  CardDemonstrativos.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 30/05/22.
//

import SwiftUI

struct CardDemonstrativos: View {
    
    var logo: String
    var texto: String
    var conteudo: String
    
    var body: some View {
        HStack (alignment: .center, spacing: 100) {
            
            HStack (spacing: 10){
                Image(systemName: logo)
                    .font(.title2)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(texto)
                        .bold()
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Text(conteudo)
                        .bold()
                        .font(.body)
                }
            }
            
            Image(systemName: "chevron.forward")
                .font(.title2)
                .foregroundColor(.gray)
        }
    }
}

struct CardDemonstrativos_Previews: PreviewProvider {
    static var previews: some View {
        CardDemonstrativos(logo: "dollarsign.circle", texto: "Dinheiro guardado", conteudo: "R$ 300,89")
    }
}

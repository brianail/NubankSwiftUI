//
//  CardInfoNu.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 29/05/22.
//

import SwiftUI

struct CardInfoNu: View {
    
    var mensagem: String
    
    var body: some View {
        Button{
            print("ir para seguro")
        }label: {
            Text("Conheça o Nubank Vida: um seguro simples que cabe no seu bolso")
                .padding()
                .font(.caption)
                .foregroundColor(.black)
        }
        .frame(width: 250, height: 70, alignment: .leading)
        .background(Color("BackgroundSquares"))
        .cornerRadius(10)
    }
}

struct CardInfoNu_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoNu(mensagem: "Conheça o Nubank Vida: um seguro simples que cabe no seu bolso")
    }
}

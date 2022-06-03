//
//  CardFooter.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 29/05/22.
//

import SwiftUI

struct CardFooter: View {
    
    var imagem: String
    var text: String
    var mensagem: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Image(imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 10)
            
            VStack (alignment: .leading, spacing: 20){
                Text(text)
                    .fontWeight(.heavy)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                Text(mensagem)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                
                Button{
                    print("Conhecer")
                }label: {
                    Text("Conhecer")
                        .bold()
                        .foregroundColor(.white)
                        .font(.body)
                }
                .padding()
                .frame(width: 140, height: 35, alignment: .center)
                .background(Color("BackgroundColor"))
                .cornerRadius(30)
            }
            .padding(40)
        }
        .frame(width: 300, height: 400, alignment: .center)
        .background(Color("BackgroundSquares"))
        .cornerRadius(20)
    }
}

struct CardFooter_Previews: PreviewProvider {
    static var previews: some View {
        CardFooter(imagem: "Credit Card_3", text: "Parcele suas compras no app", mensagem: "Descontos em compras á vista no crédito, controle total sobre as ...")
    }
}

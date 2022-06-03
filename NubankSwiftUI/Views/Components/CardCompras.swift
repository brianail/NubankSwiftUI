//
//  CardCompras.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 30/05/22.
//

import SwiftUI

struct CardCompras: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 90) {
            HStack (alignment: .center, spacing: 20){
                Image(systemName: "creditcard")
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(width: 50, height: 50, alignment: .center)
                    .background(Color("BackgroundSquares"))
                    .cornerRadius(50)
                
                VStack (alignment: .leading, spacing: 5){
                    Text("Compra no débito")
                        .font(.body)
                        .bold()
                    
                    Text("Mc Donald's")
                        .foregroundColor(.gray)
                        .font(.body)
                    
                    Text("R$ 34,80")
                        .foregroundColor(.gray)
                        .font(.body)
                }
            }
            
            Text("Hoje")
                .font(.body)
                .bold()
            
        }
    }
}

struct CardCompras_Previews: PreviewProvider {
    static var previews: some View {
        CardCompras()
    }
}

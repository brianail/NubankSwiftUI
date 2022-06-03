//
//  IconRow.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 29/05/22.
//

import SwiftUI

struct IconRow: View {
    var logo: String
    var name: String
    
    var body: some View {
        
        Button {
            print("Botão action")
        } label: {
            VStack{
                Image(systemName: logo)
                    .font(.title2)
                    .frame(width: 40, height: 40)
                    .padding()
                    .background(Color("BackgroundSquares"))
                    .cornerRadius(50)
                
                VStack(alignment: .leading, spacing: 10){
                    Text(name)
                        .font(.caption)
                        .bold()
                }
            }
            .foregroundColor(.black)
        }
    }
}

struct IconRow_Previews: PreviewProvider {
    static var previews: some View {
        IconRow(logo: "heart", name: "Doação")
    }
}

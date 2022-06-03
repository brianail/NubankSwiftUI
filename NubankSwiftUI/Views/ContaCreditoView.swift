//
//  ContaCréditoView.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 03/06/22.
//

import SwiftUI

struct ContaCreditoView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            HStack{
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.backward")
                        .font(.title2)
                        .foregroundColor(.gray)
                })
                
                Spacer()
                
                Button{
                    print("buscar")
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundColor(.gray)
                }
                
                Button{
                    print("help")
                } label: {
                    Image(systemName: "questionmark.circle")
                        .font(.title2)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ScrollView(.vertical) {
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Fatura atual")
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .font(.title2)
                    
                    Text("R$ 1.800,56")
                        .bold()
                        .font(.title)
                    
                    VStack (alignment: .leading, spacing: 5){
                        HStack{
                            Text("Limite disponível")
                                .fontWeight(.medium)
                                .foregroundColor(.gray)
                                .font(.title3)
                            Text("R$ 1.500,00")
                                .bold()
                                .font(.title3)
                        }
                        
                        HStack{
                            Text("Fecha em")
                                .fontWeight(.medium)
                                .foregroundColor(.gray)
                                .font(.title3)
                            Text("01 de jun")
                                .bold()
                                .font(.title3)
                        }
                    }
                }
                .padding()
                .frame(width: 350, height: 350, alignment: .leading)
                
                
                ScrollView(.horizontal) {
                    HStack (alignment: .center, spacing: 15){
                        IconRow(logo: "dollarsign.circle", name: "Área PIX")
                        IconRow(logo: "dollarsign.circle", name: "Pagar")
                        IconRow(logo: "dollarsign.circle", name: "Transferir")
                        IconRow(logo: "dollarsign.circle", name: "Depositar")
                        IconRow(logo: "dollarsign.circle", name: "Cobrar")
                        IconRow(logo: "iphone", name: "Recarga")
                        IconRow(logo: "heart", name: "Doação")
                        IconRow(logo: "globe", name: "Transferir inte.")
                    }
                    .padding(.bottom, 20)
                }
                .frame(width: .infinity, height: 90, alignment: .leading)
                .padding(.bottom, 20)
                
                Divider()
                
                VStack (alignment: .leading, spacing: 25){
                    ScrollView(.vertical){
                        CardCompras()
                        CardCompras()
                        CardCompras()
                        CardCompras()
                        CardCompras()
                        CardCompras()
                        CardCompras()
                        CardCompras()
                        CardCompras()
                        CardCompras()
                        
                    }
                }
            }
            .padding()
        }
    }
    
    struct ContaCreditoView_Previews: PreviewProvider {
        static var previews: some View {
            ContaCreditoView()
        }
    }
}

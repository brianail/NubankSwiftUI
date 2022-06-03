//
//  ContaSaldo.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 30/05/22.
//

import SwiftUI

struct ContaSaldoView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
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
                    print("help")
                } label: {
                    Image(systemName: "questionmark.circle")
                        .font(.title2)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 10) {
                    
                    
                    VStack(alignment: .leading, spacing: 30) {
                        Text("Saldo disponível")
                            .fontWeight(.medium)
                            .foregroundColor(.gray)
                            .font(.title2)
                        
                        Text("R$ 1.800,56")
                            .bold()
                            .font(.title)
                        
                        VStack(alignment: .leading, spacing: 40){
                            CardDemonstrativos(logo: "dollarsign.circle", texto: "Dinheiro guardado", conteudo: "R$ 300,89")
                            CardDemonstrativos(logo: "chart.xyaxis.line", texto: "Rendimento total da conta", conteudo: "+R$ 1,90 este mês")
                        }
                        
                        .padding()
                        
                        ScrollView(.horizontal){
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
                            .padding(.bottom)
                        }
                        
                        Divider()
                        
                        Text("Histórico")
                            .bold()
                            .font(.title2)
                        
                        HStack (alignment: .center, spacing: 50){
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .frame(width: 340, height: 50, alignment: .leading)
                        .background(Color("BackgroundSquares"))
                        .cornerRadius(30)
                        
                        
                        ScrollView(.vertical){
                            CardCompras()
                            CardCompras()
                            CardCompras()
                            CardCompras()
                            CardCompras()
                            CardCompras()
                            CardCompras()
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContaSaldoView_Previews: PreviewProvider {
    static var previews: some View {
        ContaSaldoView()
    }
}

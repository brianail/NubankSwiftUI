//
//  HomeView.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 03/06/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var openSaldoView = false
    @State var openCreditoView = false
    
    var body: some View {
        VStack {
            HeaderApp()
            ScrollView (.vertical) {
                VStack (alignment: .leading, spacing: 30){
                    
                    Button(action: {
                        openSaldoView = true
                    }, label: {
                        VStack(alignment: .leading, spacing: 20) {
                            HStack (alignment: .center) {
                                Text("Conta")
                                    .bold()
                                    .font(.title3)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.forward")
                                    .font(.title2)
                                    .foregroundColor(.gray)
                            }
                            Text("R$ 1.534,90")
                                .bold()
                                .font(.title2)
                        }
                    })
                    .foregroundColor(.black)
                    
                    
                    VStack (alignment: .leading, spacing: 20) {
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
                            .padding(.bottom, 20)
                        }
                        
                        Button {
                            print("Ir para cartão")
                        } label: {
                            HStack {
                                Image(systemName: "creditcard")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                
                                Text("Meus cartões")
                                    .bold()
                                    .font(.body)
                                    .foregroundColor(.black)
                                
                            }
                            .padding()
                            .frame(width: 300, height: 50, alignment: .leading)
                            .background(Color("BackgroundSquares"))
                            .cornerRadius(10)
                        }
                        
                        ScrollView(.horizontal) {
                            HStack(alignment: .top, spacing: 20){
                                CardInfoNu(mensagem: "Conheça o Nubank Vida: um seguro simples que cabe no seu bolso")
                                
                                CardInfoNu(mensagem: "Salve seus amigos da burocracia. Faça um convite para o Nubank.")
                            }
                            .padding(.bottom)
                        }
                        
                        Divider()
                        
                        HStack (alignment: .center) {
                            Text("Cartão de crédito")
                                .bold()
                                .font(.title3)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.forward")
                                .font(.title2)
                                .foregroundColor(.gray)
                        }
                        
                        Button(action: {
                            
                            openCreditoView = true
                            
                        }, label: {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Fatura atual")
                                    .font(.system(size: 15))
                                    .foregroundColor(Color("ColorBlue"))
                                
                                Text("R$ 500,00")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.black)
                                HStack{
                                    Text("Limite disponível de")
                                        .font(.system(size: 15))
                                        .foregroundColor(.black)
                                    Text("R$ 1.500,00")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("ColorGreen"))
                                }
                                Spacer()
                            }
                        })
                        
                        Button{
                            print("parcelar compras")
                        } label: {
                            Text("Parcelar compras")
                                .foregroundColor(.black)
                            
                        }
                        .padding()
                        .frame(width: 190, height: 40, alignment: .center)
                        .background(Color("BackgroundSquares"))
                        .cornerRadius(20)
                        
                        Divider()
                        
                        Text("Descubra mais")
                            .font(.title3)
                            .bold()
                        
                        ScrollView(.horizontal) {
                            HStack (alignment: .center, spacing: 20){
                                
                                CardFooter(imagem: "Credit Card_2", text: "Indique seus amigos", mensagem: "Mostre aos seus amigos como é fácil ter uma vida sem burocracia.")
                                CardFooter(imagem: "Credit Card_4", text: "Pagamentos", mensagem: "Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem ...")
                                CardFooter(imagem: "Credit Card_1", text: "Parcele suas compras no app", mensagem: "Descontos em compras á vista no crédito, controle total sobre as ...")
                                
                            }
                            .padding(.bottom)
                        }
                    }
                }
                .padding()
            }
            
            .fullScreenCover(isPresented: $openSaldoView, content: {
                ContaSaldoView()
            })
            
            .fullScreenCover(isPresented: $openCreditoView, content: {
                ContaCreditoView()
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

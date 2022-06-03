//
//  HeaderApp.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 29/05/22.
//

import SwiftUI

struct HeaderApp: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack{
                Button {
                    print("ir para user")
                } label: {
                    Image(systemName: "person.circle.fill")
                        .frame(width: 50, height: 50)
                        .padding()
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }
                
                Spacer()
                
                HStack {
                    Button {
                        print("ocultar saldo")
                    } label: {
                        Image(systemName: "eye.slash")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    Button {
                        print("ajuda")
                    } label: {
                        Image(systemName: "questionmark.circle")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    Button {
                        print("convite")
                    } label: {
                        Image(systemName: "envelope")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(30)
                .frame(width: 150, height: 50, alignment: .trailing)
                
            }
            
            Text("Olá Brian Ail")
                .bold()
                .font(.title2)
                .foregroundColor(.white)
                .padding()
        }
        .background(Color("BackgroundNav"))
    }
}

struct HeaderApp_Previews: PreviewProvider {
    static var previews: some View {
        HeaderApp()
    }
}

//
//  LoadingView.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 03/06/22.
//

import SwiftUI

struct LoadingView: View {
    
    @State var size: CGFloat = 0.80
    
    var repeatingAnimation: Animation {
        Animation
            .easeInOut(duration: 1.5)
            .repeatForever()
    }
    
    
    var body: some View {
        VStack {
            ZStack{
                Image("nu_logo_White")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 160)
                    .scaleEffect(size)
                    .onAppear() {
                        withAnimation(self.repeatingAnimation) { self.size = 1 }
                    }
                    .frame(width: 390, height: 800, alignment: .center)
            }
            .background(Color("BackgroundNav"))
            
        }
    }
    
    struct LoadingView_Previews: PreviewProvider {
        static var previews: some View {
            LoadingView()
        }
    }
}

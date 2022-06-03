//
//  ContentView.swift
//  NubankSwiftUI
//
//  Created by Brian Ail on 29/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var launching = true
    
    var body: some View {
        Group {
            if launching {
                LoadingView()
            } else {
                HomeView()
            }
        }
        
        .onAppear {
            withAnimation(.default.delay(5)) {
                launching = false
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

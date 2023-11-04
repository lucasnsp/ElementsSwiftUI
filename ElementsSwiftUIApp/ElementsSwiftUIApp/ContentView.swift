//
//  ContentView.swift
//  ElementsSwiftUIApp
//
//  Created by Lucas Neves dos santos pompeu on 04/11/23.
//

import SwiftUI

struct ToggleScreen: View {
    
    @State var isOn: Bool = true
    
    var body: some View {
        ZStack {
            Color(isOn ? .orange : .blue)
                .ignoresSafeArea()
            VStack {
                Toggle(isOn: $isOn) {
                    Text("teste")
                }
                .labelsHidden()
            }
            .padding()
        }
        
    }
}

#Preview {
    ToggleScreen()
}

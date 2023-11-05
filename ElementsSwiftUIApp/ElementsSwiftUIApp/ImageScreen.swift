//
//  ImageScreen.swift
//  ElementsSwiftUIApp
//
//  Created by Lucas Neves dos santos pompeu on 05/11/23.
//

import SwiftUI

struct ImageScreen: View {
    var body: some View {
        Image(systemName: "trash")
            .resizable()
            .rotationEffect(.degrees(100))
            .frame(width: 150, height: 150)
            .padding()
            .background(
                Capsule().stroke(Color.pink, lineWidth: 2)
            )
            .shadow(radius: 10)
            .onTapGesture {
                print("Legal")
            }
    }
}

#Preview {
    ImageScreen()
}

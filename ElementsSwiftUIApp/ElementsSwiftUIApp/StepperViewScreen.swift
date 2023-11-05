//
//  StepperViewScreen.swift
//  ElementsSwiftUIApp
//
//  Created by Lucas Neves dos santos pompeu on 04/11/23.
//

import SwiftUI

struct StepperViewScreen: View {
    
    @State var contador: Int = 0
    
    var body: some View {
        VStack {
            Stepper("Contador", value: $contador, in: 0...10, step: 2)

            Text("Valor Stepper: \(contador)")
        }
    }
}

#Preview {
    StepperViewScreen()
}

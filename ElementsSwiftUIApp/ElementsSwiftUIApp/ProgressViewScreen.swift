//
//  ProgressViewScreen.swift
//  ElementsSwiftUIApp
//
//  Created by Lucas Neves dos santos pompeu on 05/11/23.
//

import SwiftUI

struct ProgressViewScreen: View {
    
    @State var progress: Double = 0
    var maxValue: Double = 10
    
    var body: some View {
        VStack(spacing: 10.0) {
            Button("Avançar") {
                progress += 0.5
            }
            
            ProgressView("Carregamento...", value: progress, total: maxValue)
                .labelsHidden()
                .padding()
    
            Button("Diminuir") {
                startProgress()
            }
        }
        .padding()
    }
    
    func startProgress() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.progress < maxValue {
                progress += 2
            } else {
                timer.invalidate()
                progress = 0
            }
        }
    }
}

#Preview {
    ProgressViewScreen()
}

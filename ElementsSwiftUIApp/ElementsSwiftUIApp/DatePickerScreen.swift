//
//  DatePickerScreen.swift
//  ElementsSwiftUIApp
//
//  Created by Lucas Neves dos santos pompeu on 04/11/23.
//

import SwiftUI

struct DatePickerScreen: View {
    
    @State var selectDate = Date()
    
    var body: some View {
        VStack(spacing: 30){
            DatePicker("Escolha uma data", selection: $selectDate , in: ...Date(), displayedComponents: .date)
            
            Text("A data é: \(formattedDate)")
            
            DatePicker("Escolha uma data", selection: $selectDate , in: ...Date(), displayedComponents: .date)
                .labelsHidden()
                .datePickerStyle(.wheel)
        }
        .padding()
    }
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: selectDate)
    }
}

#Preview {
    DatePickerScreen()
}

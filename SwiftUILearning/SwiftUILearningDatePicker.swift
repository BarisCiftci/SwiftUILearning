//
//  SwiftUILearningDatePicker.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 25/01/2023.
//

import SwiftUI

struct SwiftUILearningDatePicker: View {
    
    @State var selectDate: Date = Date()
    
    var body: some View {
        DatePicker("select a date",
                   selection: $selectDate)
        
        
        .accentColor(.red)
        .datePickerStyle(.compact)
        .padding()
        
    }

}

struct SwiftUILearningDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningDatePicker()
    }
}

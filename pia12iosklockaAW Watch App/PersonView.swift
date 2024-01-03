//
//  PersonView.swift
//  pia12iosklockaAW Watch App
//
//  Created by BillU on 2024-01-03.
//

import SwiftUI

struct PersonView: View {
    
    @State var currentperson : Person
    
    var body: some View {
        VStack {
            Text(currentperson.firstname)
            Text(currentperson.lastname)

        }
    }
}

#Preview {
    PersonView(currentperson: Person())
}

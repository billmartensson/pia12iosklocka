//
//  ContentView.swift
//  pia12iosklockaAW Watch App
//
//  Created by BillU on 2024-01-03.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var peopleapi = PersonAPI()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Tjena, världen!")
                FancyboxView()
                List {
                    ForEach(peopleapi.people, id: \.firstname) { person in
                        NavigationLink(destination: PersonView(currentperson: person)) {
                            Text(person.firstname)
                        }
                    }
                }
                
            }
            .padding()
            .onAppear() {
                peopleapi.loadpeople()
            }
        }
    }
}

#Preview {
    ContentView()
}

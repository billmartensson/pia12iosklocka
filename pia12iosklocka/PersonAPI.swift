//
//  PersonAPI.swift
//  pia12iosklocka
//
//  Created by BillU on 2024-01-03.
//

import Foundation

class Person {
    var firstname = ""
    var lastname = ""
}

class PersonAPI : ObservableObject {
    
    @Published var people = [Person]()
    
    func loadpeople()  {
        
        var temppeople = [Person]()
        
        var p1 = Person()
        p1.firstname = "Arne"
        p1.lastname = "Arnesson"
        temppeople.append(p1)

        var p2 = Person()
        p2.firstname = "Bertil"
        p2.lastname = "Bertilsson"
        temppeople.append(p2)

        people = temppeople
    }
    
}

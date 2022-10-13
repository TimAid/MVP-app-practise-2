//
//  File.swift
//  MVP app practise 2
//
//  Created by Aid on 13.10.2022.
//

import Foundation

protocol MainViewProtocol {
    func setGreetings(greeting: String)
}

protocol MainViewPresenterProtocol {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class Presenter: MainViewPresenterProtocol {
   
    var view: MainViewProtocol
    var person: Person
   
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.lastName + " " + self.person.firstName
        view.setGreetings(greeting: greeting)
    }
}

//
//  ModuleBuilder.swift
//  MVP app practise 2
//
//  Created by Aid on 13.10.2022.
//

import Foundation
import UIKit

protocol Builder {
    static func createView() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createView() -> UIViewController {
        let person = Person(firstName: "timur", lastName: "mannapov")
        let view = MainViewController()
        let presenter = Presenter(view: view, person: person)
        view.presenter = presenter
        return view
    }
}

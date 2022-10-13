//
//  ViewController.swift
//  MVP app practise 2
//
//  Created by Aid on 13.10.2022.
//

import UIKit
// Это View
class MainViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func pressButtonToShow(sender: Any) {
        self.presenter.showGreeting()
    }

}

extension MainViewController: MainViewProtocol {
    func setGreetings(greeting: String) {
        greetingLabel.text = greeting
    }
}

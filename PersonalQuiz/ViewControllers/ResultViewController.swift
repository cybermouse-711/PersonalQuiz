//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 19.02.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answersChosen: [Answer] = []
   
    @IBOutlet var animalResultLabel: UILabel!
    @IBOutlet var textResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        animalResultLabel.text = "Вы \(answersChosen.first?.animal.rawValue ?? " ")!"
        textResultLabel.text = "\(answersChosen.first?.animal.definition ?? "")"
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}

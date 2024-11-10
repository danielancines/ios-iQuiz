//
//  ViewController.swift
//  iQuiz
//
//  Created by Daniel Ancines on 10/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureLayout()
    }

    @IBAction func pressedButton(_ sender: Any) {
        print("O Botão foi pressionado")
    }
    
    @IBOutlet weak var initializeQuizButton: UIButton!
    
    func configureLayout(){
        initializeQuizButton.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
}


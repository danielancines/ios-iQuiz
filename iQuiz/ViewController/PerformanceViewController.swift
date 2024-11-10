//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by Daniel Ancines on 10/11/24.
//

import UIKit

class PerformanceViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    var score: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureSore()
    }
    
    func configureLayout(){
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12
    }
    
    func configureSore(){
        guard let score = score else { return }
        
        resultLabel.text = "Você acertou \(score) de \(questions.count) questões"
        percentageLabel.text = "Percentual final: \(round(Double(score) / Double(questions.count) * 100))%"
    }
}

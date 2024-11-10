//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Daniel Ancines on 10/11/24.
//

import UIKit

class QuestionViewController: UIViewController {
    var score = 0
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        configureLayout()
        configureQuestion()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var answerButtons: [UIButton]!
    
    @IBOutlet weak var questionTitleLabel: UILabel!

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userHitAnswer = questions[questionNumber].correctAnswer == sender.tag
        
        if userHitAnswer{
            score += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
            print("Correct Answer")
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if (questionNumber < questions.count - 1){
            questionNumber += 1
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false){ _ in
                self.configureQuestion()
            }
        } else {
            self.goToPerformanceScreed()
        }
    }
    
    func goToPerformanceScreed(){
        performSegue(withIdentifier: "goToPerformanceScreen", sender: nil)
    }
    
    func configureLayout(){
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        for button in answerButtons{
            button.layer.cornerRadius = 12
        }
    }
    
    func configureQuestion(){
        let question = questions[questionNumber]
        questionTitleLabel.text = question.title
        for button in answerButtons{
            button.setTitle(question.answers[button.tag], for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceViewController = segue.destination as? PerformanceViewController
            else { return }
        
        performanceViewController.score = score
    }
}
